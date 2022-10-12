#include <fstream>
#include <iostream>
#include <regex>
#include <vector>

std::vector<double> parse(std::string line) {
  std::vector<double> doubles;
  std::regex re("(\\d+\\.\\d+), (\\d+\\.\\d+)");
  std::sregex_iterator next(line.begin(), line.end(), re);
  std::sregex_iterator end;
  while (next != end) {
    std::smatch match = *next;
    int i = 0;
    for (auto m : match) {
      if (i != 0) {
        double d = std::stod(m);
        doubles.push_back(d);
      }
      ++i;
    }
    next++;
  }
  return doubles;
}

int main() {
  const std::string cwd = "/Users/chiraagbalu/LimitOrderBook/";
  const std::string datafile = "book_data.txt";
  const std::string path = cwd + datafile;

  std::ifstream file(path);  // won't open successfully if it doesn't exist
  std::cout << path;

  std::cout << '\n';

  std::string line;

  std::vector<std::string> lines;

  std::vector<std::vector<double> > bidLevels;
  std::vector<std::vector<double> > askLevels;

  while (getline(file, line)) {
    // std::cout << line << '\n';
    // lines.push_back(line);
    std::string side = line.substr(0, 4);
    if (side == "bids") {
      bidLevels.push_back(parse(line));
    } else {
      askLevels.push_back(parse(line));
    }
  }

  int snapshots = bidLevels.size();
  for (int snap = 0; snap < snapshots; snap++) {
    std::cout << "t: " << snap << "\n";

    int depth = bidLevels[snap].size();
    for (int d = depth - 1; d >= 0; d -= 2) {
      std::cout << "ask: " << std::setprecision(7) << askLevels[snap][d - 1]
                << " volume: " << askLevels[snap][d] << "\n";
    }
    for (int d = 0; d < depth; d += 2) {
      std::cout << "bid: " << std::setprecision(7) << bidLevels[snap][d]
                << " volume: " << bidLevels[snap][d + 1] << "\n";
    }
  }
}
/*
int t = 0;
  for (auto bid : bidLevels) {
    std::cout << "t: " << t << "\n";
    std::cout << "bids:"
              << "\n";
    int depth = bid.size();
    for (int d = 0; d <= depth; d += 2) {
      std::cout << "price: " << bid[d] << "\n";
      std::cout << "volume: " << bid[d + 1] << "\n";
    }
    std::cout << "-----------"
              << "\n";
    t++;
  }
  t = 0;
  for (auto ask : askLevels) {
    std::cout << "t: " << t << "\n";
    std::cout << "asks:"
              << "\n";
    int depth = ask.size();
    for (int d = 0; d <= depth; d += 2) {
      std::cout << "price: " << ask[d] << "\n";
      std::cout << "volume: " << ask[d + 1] << "\n";
    }
    std::cout << "-----------"
              << "\n";
    t++;

  }*/

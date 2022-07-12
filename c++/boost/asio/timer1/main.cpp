#include <iostream>
#include <boost/asio.hpp>

int main() {
    boost::asio::io_service io;

    std::cout << "Start timer" << std::endl;
    boost::asio::steady_timer t(io, boost::asio::chrono::seconds(5));
    t.wait();
    std::cout << "Hello, World!" << std::endl;
    return 0;
}

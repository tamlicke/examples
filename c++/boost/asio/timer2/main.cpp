#include <iostream>
#include <boost/asio.hpp>

void print(const boost::system::error_code& /*e*/) {
    std::cout << "Hello, World!" << std::endl;
}

int main() {
    boost::asio::io_service io;

    std::cout << "Start timer" << std::endl;
    boost::asio::steady_timer t(io, boost::asio::chrono::seconds(5));

    t.async_wait(&print);
    io.run();


    return 0;
}

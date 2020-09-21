#include <iostream>
#include <fstream>
#include <string>
#include <vector>

using namespace std;

void BubbleSort(std::vector<int> arr) {
    for (int i = 0; i < arr.size() - 1; ++i) {
        for (int j = 0; j < arr.size() - 1 - i; ++j) {
            if (arr[j] > arr[j + 1]) {
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }

    for (auto &c: arr) {
        std::cout << c << " ";
    }
    std::cout << std::endl;
}

void SelectSort(std::vector<int> arr) {
    for (int i = 0; i < arr.size() - 1; ++i) {
        int min = i;
        for (int j = i + 1; j < arr.size(); ++j) {
            if (arr[j] < arr[min]) {
                min = j;
            }
        }
        int temp = arr[i];
        arr[i] = arr[min];
        arr[min] = temp;
    }

    for (auto &c: arr) {
        std::cout << c << " ";
    }
    std::cout << std::endl;
}


void InsertSort(std::vector<int> arr) {
    for (int i = 1; i < arr.size(); ++i) {
        int key = arr[i];
        int j = i - 1;
        while (arr[j] > key && j >= 0) {
            arr[j + 1] = arr[j];
            j--;
        }
        arr[j + 1] = key;
    }

    for (auto &c: arr) {
        std::cout << c << " ";
    }
    std::cout << std::endl;
}


void QuickSort(int left, int right, std::vector<int>& arr) {

    if (left >= right) {
        return;
    }
    int i, j, base, temp;
    i = left, j = right;
    base = arr[left];
    while (i < j) {
        while (arr[j] >= base && i < j) {
            j--;
        }
        while (arr[i] <= base && i < j) {
            i++;
        }

        /*if (i < j) */{
            temp = arr[i];
            arr[i] = arr[j];
            arr[j] = temp;
        }
    }

    arr[left] = arr[i];
    arr[i] = base;

    QuickSort(left, i - 1, arr);
    QuickSort(i + 1, right, arr);
}

int main(void) {
    std::vector<int> arr = {1, 3, 4, 9, 6, 2, 5, 7, 8};
//    std::vector<int> arr = {3, 1};
//    BubbleSort(arr);
//    SelectSort(arr);
//    InsertSort(arr);
    QuickSort(0, arr.size() - 1, arr);
    for(auto &c: arr) {
        std::cout << c << " ";
    }
    std::cout << std::endl;


    std::cout << "test" << std::endl;
    return 0;
}

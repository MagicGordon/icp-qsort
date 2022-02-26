import Array "mo:base/Array";
import Int "mo:base/Int";
import Nat "mo:base/Nat";

module q_sort_module {
    public func q_sort(arr:[var Int], start:Int, end:Int) {
        if (start < end) {
            var i = start;
            var j = end;
            let item = arr[Int.abs(i)];
            while (i < j)
            {
                while(i < j and arr[Int.abs(j)] > item)
                    j -= 1; // 从右向左找第一个小于x的数
                if(i < j) {
                    arr[Int.abs(i)] := arr[Int.abs(j)];
                    i += 1;
                };

                while(i < j and arr[Int.abs(i)] < item)
                    i += 1; // 从左向右找第一个大于x的数
                if(i < j) {
                    arr[Int.abs(j)] := arr[Int.abs(i)];
                    j -= 1;
                }

            };
            arr[Int.abs(i)] := item;
            q_sort(arr, start, i-1); 
            q_sort(arr, i+1, end); 
        }
    };
};
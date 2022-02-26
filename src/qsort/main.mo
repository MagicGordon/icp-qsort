import Int "mo:base/Int";
import Nat "mo:base/Nat";
import q_sort "q_sort";
import Array "mo:base/Array";
import Debug "mo:base/Debug";

actor Main {
    public func qsort(arr : [Int]) : async [Int] {
        var res: [var Int] = Array.thaw(arr);
        q_sort.q_sort(res, 0, res.size() - 1);
        return Array.freeze(res);
    };
};

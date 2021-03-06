---
noteId: "8f576ea0be1311eba4f55383fcb5e70a"
tags: []
---

# Ruby-ata-structures-and-algorithms

## LeetCode Challenges

LeetCode offers a lot of challenges that are often asked by large companies such as Google or Microsoft. Working on LeetCode challenges is a great way to practice applying algorithms & data structures concepts to some fun challenges.

The goal of this repository is to complete as many challenges from [this](https://leetcode.com/problemset/top-100-liked-questions/) collection of popular challenges in LeetCode.

### 1. TWO SUM [source](https://leetcode.com/problems/two-sum)

Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
You may assume that each input would have exactly one solution, and you may not use the same element twice.

### 2. ADD TWO NUMBERS [source](https://leetcode.com/problems/add-two-numbers/)

You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.

### 3. Longest Substring Without Repeating Characters [source](https://leetcode.com/problems/longest-substring-without-repeating-characters/)

Given a string s, find the length of the longest substring without repeating characters.

### 4. 3Sum [source](https://leetcode.com/problems/3sum/)

Given an integer array nums, return all the triplets `[nums[i], nums[j], nums[k]]` such that `i != j, i != k`, and `j != k`, and `nums[i] + nums[j] + nums[k] == 0`.

Notice that the solution set must not contain duplicate triplets.

### 5. Best Time to Buy and Sell Stock [source](https://leetcode.com/problems/best-time-to-buy-and-sell-stock/)

You are given an array prices where `prices[i]` is the price of a given stock on the ith day.

You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, `return 0`.

### 6. Best Time to Buy and Sell Stock with Cooldown [source](https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-cooldown/)

You are given an array `prices` where `prices[i]` is the price of a given stock on the `ith` day.

Find the maximum profit you can achieve. You may complete as many transactions as you like (i.e., buy one and sell one share of the stock multiple times) with the following restrictions:

- After you sell your stock, you cannot buy stock on the next day (i.e., cooldown one day).

**_Note:_** You may not engage in multiple transactions simultaneously (i.e., you must sell the stock before you buy again).

### 7. Binary Tree Inorder Traversal [source](https://leetcode.com/problems/binary-tree-inorder-traversal/)

Given the `root` of a binary tree, return the inorder traversal of its nodes' values.

### 8. Binary Tree Level Order Traversal [source](https://leetcode.com/problems/binary-tree-level-order-traversal/)

Given the `root` of a binary tree, return the level order traversal of its nodes' values. (i.e., from left to right, level by level).

### 9. Binary Tree Maximum Path Sum [!] [source](https://leetcode.com/problems/binary-tree-maximum-path-sum/)

A path in a binary tree is a sequence of nodes where each pair of adjacent nodes in the sequence has an edge connecting them. A node can only appear in the sequence at most once. Note that the path does not need to pass through the root.

The path sum of a path is the sum of the node's values in the path.

Given the `root` of a binary tree, return the maximum path sum of any path.

### 10. Climbing Stairs [source](https://leetcode.com/problems/climbing-stairs/)

You are climbing a staircase. It takes `n` steps to reach the top.

Each time you can either climb `1` or `2` steps. In how many distinct ways can you climb to the top?

### 11. Coin Change [source](https://leetcode.com/problems/coin-change/)

You are given an integer array coins representing `coins` of different denominations and an integer `amount` representing a total amount of money.

Return the fewest number of coins that you need to make up that amount. If that amount of money cannot be made up by any combination of the coins, return `-1`.

You may assume that you have an infinite number of each kind of coin.

### 12. Combination Sum [source](https://leetcode.com/problems/combination-sum/)

Given an array of distinct integers `candidates` and a target integer `target`, return a list of all unique combinations of `candidates` where the chosen numbers sum to `target`. You may return the combinations in any order.

The same number may be chosen from `candidates` an unlimited number of times. Two combinations are unique if the frequency of at least one of the chosen numbers is different.

It is guaranteed that the number of unique combinations that sum up to `target` is less than `150` combinations for the given input.

### 13. Container With Most Water [source](https://leetcode.com/problems/container-with-most-water/)

Given `n` non-negative integers `a1, a2, ..., an` , where each represents a point at coordinate `(i, ai)`. `n` vertical lines are drawn such that the two endpoints of the line `i` is at `(i, ai)` and `(i, 0)`. Find two lines, which, together with the x-axis forms a container, such that the container contains the most water.

Notice that you may not slant the container.

### 14. Counting Bits [source](https://leetcode.com/problems/counting-bits/)

Given an integer `n`, return an array `ans` of length `n + 1` such that for each `i (0 <= i <= n)`, `ans[i]` is the number of `1`'s in the binary representation of `i`.

### 15. Course Schedule [!] [source](https://leetcode.com/problems/course-schedule/)

There are a total of `numCourses` courses you have to take, labeled from `0` to `numCourses - 1`. You are given an array prerequisites where `prerequisites[i] = [ai, bi]` indicates that you must take course `bi` first if you want to take course `ai`.

- For example, the pair `[0, 1]`, indicates that to take course `0` you have to first take course `1`.

Return `true` if you can finish all courses. Otherwise, return `false`.

### 16. Decode String [source](https://leetcode.com/problems/decode-string/)

The encoding rule is: `k[encoded_string]`, where the `encoded_string` inside the square brackets is being repeated exactly `k` times. Note that `k` is guaranteed to be a positive integer.

You may assume that the input string is always valid; No extra white spaces, square brackets are well-formed, etc.

Furthermore, you may assume that the original data does not contain any digits and that digits are only for those repeat numbers, `k`. For example, there won't be input like `3a` or `2[4]`.

### 17. Diameter of Binary Tree [!] [source](https://leetcode.com/problems/diameter-of-binary-tree/)

Given the `root` of a binary tree, return the length of the diameter of the tree.

The diameter of a binary tree is the length of the longest path between any two nodes in a tree. This path may or may not pass through the `root`.

The length of a path between two nodes is represented by the number of edges between them.

### 18. Edit Distance [source](https://leetcode.com/problems/edit-distance/)

Given two strings `word1` and `word2`, return the minimum number of operations required to convert `word1` to `word2`.

You have the following three operations permitted on a word:

- Insert a character
- Delete a character
- Replace a character

### 19. Find All Anagrams in a String [source](https://leetcode.com/problems/find-all-anagrams-in-a-string/)

Given two strings `s` and `p`, return an array of all the start indices of `p`'s anagrams in `s`. You may return the answer in any order.

### 20. Find All Numbers Disappeared in an Array [source](https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/)

Given an array `nums` of n integers where `nums[i]` is in the range `[1, n]`, return an array of all the integers in the range `[1, n]` that do not appear in `nums`.

### 21. Find First and Last Position of Element in Sorted Array [source](https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/)

Given an array of integers `nums` sorted in ascending order, find the starting and ending position of a given `target` value.

If target is not found in the array, return `[-1, -1]`.

You must write an algorithm with `O(log n)` runtime complexity.

### 22. Find the Duplicate Number [source](https://leetcode.com/problems/find-the-duplicate-number/)

Given an array of integers `nums` containing `n + 1` integers where each integer is in the range `[1, n]` inclusive.

There is only one repeated number in `nums`, return this repeated number.

You must solve the problem without modifying the array `nums` and uses only constant extra space.

## Author

???? **Guillain Bisimwa**

- Github : [@guillainbisimwa](https://github.com/guillainbisimwa)
- Twitter : [@gullain_bisimwa](https://twitter.com/gullain_bisimwa)
- Linkedin : [guillain-bisimwa](https://www.linkedin.com/in/guillain-bisimwa-8a8b7a7b/)

## ???? Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/guillainbisimwa/Ruby-ata-structures-and-algorithms-/issues).

## Acknowledgments

- [Microverse](https://www.microverse.org/)
- [leetcode](https://leetcode.com/)
- [techiedelight](https://www.techiedelight.com/)

## Show your support

Give a ?????? if you like this project!

## ???? License

This project is [MIT](lic.url) licensed.

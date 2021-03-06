# Self-number

# 어떤 자연수 n이 있을 때, d(n)을 n의 각 자릿수 숫자들과 n 자신을 더한 숫자라고 정의하자.
# 예를 들어 d(91) = 9 + 1 + 91 = 101
# 이 때, n을 d(n)의 제너레이터(generator)라고 한다. 위의 예에서 91은 101의 제너레이터이다.
# 어떤 숫자들은 하나 이상의 제너레이터를 가지고 있는데, 101의 제너레이터는 91뿐만 아니라 100도 있다.
# 그런데 반대로, 제네레이터가 없는 숫자들도 있으며, 이런 숫자를 인도의 수학자 Kaprekar가 셀프 넘버
# (Self-number)라 이름 붙였다. 예들 들어 1,3,5,7,9,20,31는 셀프 넘버들이다.
# 1이상이고 5000보다 작은 모든 셀프 넘버들의 합을 구하라.

# d(1) = 1 + 1 = 2
# d(2) = 2 + 2 = 4
# d(3) = 3 + 3 = 6
# d(91) = 9 + 1 + 91 = 101
# 1227365


def d n
  sum = 0
  n.to_s.split(//).each do |c|
    # puts c
    sum += c.to_i
  end
  sum + n
end

SIZE = 5000
s = Array.new(SIZE)
(1..SIZE).each do |n|
  x = d(n)
  # puts x
  s[x] = 1 if x < SIZE
end

sum = 0
idx = 0
s.each do |ss|
  sum += idx if ss.to_i < 1
  idx += 1
end

puts sum
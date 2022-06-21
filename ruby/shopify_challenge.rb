# Coding Question:
# Juan Hernandez is a Shopify merchant that owns a Pepper sauce shop
# with five locations: Toronto, Vancouver, Montreal, Calgary and Halifax.
# He also sells online and ships his sauces across the country from one
# of his brick-and-mortar locations.
​
# The pepper sauces he sells are:
​
# Jalapeño (J)
# Habanero (H)
# Serrano (S)
# The inventory count for each location looks like this:
​
# City	J	H	S
# Toronto	5	0	0
# Vancouver	10	2	6
# Montreal	3	5	5
# Calgary	1	18	2
# Halifax	28	2	12
# Every time he gets an online order, he needs to figure out
# which locations can fulfill that order. Write a function that
# takes an order as input and outputs a list of locations which
# have all the items in stock.
​
# Example
# Input : J:3. H:2 s:4
# Output: Van, Mon, Hali
​
​
def shopify_challenge(order)
    hsh_map = {
        "Tor" => {
            J: 5,
            H: 0,
            S: 0
        },
        "Van" => {
            J: 10,
            H: 2,
            S: 6
        },
        "Mon" => {
            J: 3,
            H: 5,
            S: 5
        },
        "Cal" => {
            J: 1,
            H: 18,
            S: 2
        },
        "Hali" => {
            J: 28,
            H: 2,
            S: 12
        },
    }
    results = hsh_map.reduce([]) do |acc, (k, v)|
        r = order_check(order, v)
        if r == true
            acc << k
        end
        acc
    end
    results.join(", ")
end
​
def order_check(order, current)
    expected = order.all? do |k, v|
        v <= current[k]
    end
    expected
end
​
order_1 = {
    J: 3,
    H: 2,
    S: 4
}
puts attempt1 = shopify_challenge(order_1)
# expected = "Van, Mon, Hali"
​
order_2 = {
    H: 7,
    S: 1
}
​
puts attempt2 = shopify_challenge(order_2)
# expected = "Cal"

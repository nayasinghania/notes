---
tags:
  - cs146
---
**

Hashing

- An algorithm that uses a function (hash function) to map large datasets (variable length), called keys, to smaller datasets of fixed length
    
- Hash Table (hash map)
    

- A data structure that uses a hash function to efficiently map keys to values
    
- Very efficient search and retrieval
    
- Used in many computer software
    

- Associative arrays
    
- Database
    
- Indexing
    
- Caches
    
- Sets
    

  

Hash Table Example

- Phone numbers
    

- 66752378
    
- 68744483
    

- Hash function
    

- h(x) = x % 997;
    
- x = phone number
    

- We must store the key values
    

  

Hash Functions and Hash Values

- Assume a hash table of size N
    
- Keys: used to identify the data
    
- Hash function: used to compute a hash value
    
- Hash value (hash code)
    

- Computed from the key using hash function to get a number in the range 0~N~1
    
- Used as the index (address) of the table entry for the data
    
- Regarded as the “home address” of a key
    
- Goal: address are different and spread evenly
    
- When two keys have the same hash value – collision
    

  

Collision

- A hash function may map different keys to the same slot
    

- Many to one mapping and not one to one
    
- E.g. 66754372 hashes to the same location of 66753278
    

- Two keys have the same hash value
    

  

Good Hash Function

- O(1)
    
- Scatters keys evenly
    
- Less collisions
    
- Less slots 
    

  

Bad Hash Functions

- Digit selection
    

- E.g. choose the 4th and 8th digits of a phone number
    
-   
    

  

Perfect Hash Functions

- One-to-one mapping between keys and hash values
    

- Hence, no collision occurs
    

- Possible only if all keys are known
    
- Applications
    

- Compiler and interpreter search for reserved keywords; shell interpreter searches for built-in commands
    
- Example
    

- GU gperf is a freely available perfect hash function, written in C++. It automatically constructs perfect functions from a user supplied list of keywords
    

  

Uniform Hash Functions

- Distributes keys uniformly in the hash table
    
- If keys are uniformly distributed in [0, X), map them to a hash table of size m (m < X) using hash function
    
- ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdj68VxTMJ8bKrFo8cFNAjDDQ3ZcJ4qIXhECPD9wU0MMA2F6zvcl3RcechLhcrtDeaDwG7JdueXhkqNGxVPiT1aUHoj64CVkMsNF0WskosAINYiCdka4sscHf8j4_ZAmgd04IHHe9T32KhkaWhVfp7TkBBh?key=E1Wbm5uYcWx3BdjBAIZpaA)
    

  

Division Method

- Map into a hash table of m slots
    
- Use the modulo operator to map and integer to a value between 0 and m-1
    
- (n % m) = remainder of n divided by m, where n and m are positive integers
    
- hash(k) = k % m
    
- One of the most popular methods
    

  

A good choice of m

- ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXeJGS7_v6y8w842CQIdH0da7otV07_6gFLIYhXfroWQ_TSNJ4vSGXroEWQUHyCTizf7N0Wm3rKteAjMaxyjaeMIk0IVR0FLjPCLlBRUGTwg6EcHQWDH1PWr947umIuqXa_79c1CprePvv9yFHElP-8krPgN?key=E1Wbm5uYcWx3BdjBAIZpaA)
    

  

Multiplication Method

- ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXda7Ajxos3KB3Nt_aTWhhPuH4KbXYbYuakOR6QlYQBjUO2nkCAHXgtzn22_vRavNzmnjelqX8-Pz85N3gf7SNjtCbxNjQJgBO-mVhr3w0CgaXDAFT1moqEMropBeF_I_jcYMlUCZW6tyztvFNWfsz0EwX4?key=E1Wbm5uYcWx3BdjBAIZpaA)
    

  

Examples

- ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXeZ1CFN-ozxa7c17WK_HsbTFJMiKlGEHoIl8mylkmibr2OBzTNxXhfPc5k9REWz24Fz_vHQFj1qdSajpTgGtC10joMH70Zlw5h4b6BksD1r0Hv2YVnOZJr2CXfnvroJGOVtJSBRw5Ki5IiMOqq96shg1Nhd?key=E1Wbm5uYcWx3BdjBAIZpaA)
    
- ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXd2TJgtyo2GwfhxvmtHTwOYkG2U_7XOLBns3QM68TzbdQOCFe9Cren8c0a0mzwWejyR1wVysmBCSwX_Mt8H9B6jCUQo6mpwsKcBpz6UkFUcZlhNElBJ8cZwrnDAxf0ruHFLarCzcRcpZcsH0VOk0Q4aUXJH?key=E1Wbm5uYcWx3BdjBAIZpaA)
    
- ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdYaxDbrFmNIhkH9ArndMBGGCzx-yqDN_QrD7_SaPArbHEjhdZhA3ucEKBjYxyMbwzRsMP_ksygCCeyLdk0Bu5OawFkZZFo77xPmt-YI3eTEYDVgHNtqh6xMpIfQhnRZxEHkslFKHhlmj0XCegaGy3gLZ-j?key=E1Wbm5uYcWx3BdjBAIZpaA)
    
- ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXcAI-6dHwRPrlLDe3n9NmgDaw_Yft5lD6QQtBcewUqYSHuMPAbvgupRCO2Lpq7Mq89NcAuu9Vt6L3ibt6ilkqAFXCVaHYOQ8aMXLLmES9Gd8YAo9924gMizeVJ5fR_q_xXOwawO95sIcFmR9HMUDnvoVRSI?key=E1Wbm5uYcWx3BdjBAIZpaA)
    

  

Collision resolution techniques

- Open hashing
    

- Closed addressing
    

- Separate chaining
    

- Use a linked list to store collided keys
    
- Always insert at the beginning (or back) of the list
    
- Find the address in the hash table via hash function
    

- Search across the linked list one at at time
    

- Performance
    

- insert(key,data)
    

- O(1)
    

- find(key)
    

- O(1+alpha) on average
    

- delete(key)
    

- O(1+alpha) on average
    

- alpha=number of keys/capacity
    
- If alpha <= constant, complexity of all three operations: O(1)
    
- Address given to a key is fixed
    

- This is closed addressing
    

- Types of questions
    

- Give some random numbers and a hash function
    

- Which index will have longest chain
    
- What does the hash table look like
    
- Which indexes will have chains
    
- Which indexes will not have chains
    

- Closed hashing
    

- Open addressing
    

- Keys are open to be readdressed
    

- Keys are closed to be put into that hash address if full
    

- Linear probing
    

- Inline poke
    
- hash(k) = k mod 7, (ie, table-size (m) = 7)
    

- Worry about size of hash table
    
- Note: 7 is prime
    

- Collision
    

- Scan forward for next empty slot
    

- Wrap around after reaching last result
    

- Example
    

- hash(k) = k mod 7
    
- Given m = 7
    
- Draw hash table with indexes 0 to 6
    
- hash(25) = 25 mod 7 = 4
    

- Put 25 in the 4th index
    

- hash(15) = 15 mod 7 = 1
    

- Put 15 in the 1st index
    
- _,15,_,_,25,_,_
    

- hash(1) = 1 mod 7 = 1
    

- Collision
    
- Look for next empty slot
    
- Put 1 in the 2nd index
    

- hash(35) = 35 mod 7 = 0
    

- Insert 35 at 0th index
    

- hash(50) = 50 mod 7 = 1
    

- Collision
    
- Look for next empty slot
    
- Look for next empty slot
    
- Insert 50 at 3rd index
    

- Search 50
    

- If numbers inserted in a certain sequence using this hash function using linear probing, if i am searching for 50, how many probes will I get
    
- 50 mod 7 = 1
    
- Should be at index 1, its not at index one
    
- Keep searching till you reach the index
    

- Which is index 3
    

- Found after 3 probes
    
- If we find an empty slot (p-slot)?, we stop probing
    

- The empty slot does get probed
    

- ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXcD6Viy_wDuX6ko7nP1xrO8Xhaa_qydXCUoyeGZraABsPRJhINjpM2Dp22POeAnrtG5S62MUfENA9V0dc_cjBo4zJ99cFwjUq9wtDKZSx48RALr-MJ1QoivN8ivq2_SCixCGZBmO7iWZPdU41gy6swvDK19?key=E1Wbm5uYcWx3BdjBAIZpaA)
    
- ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXcHW0qRZOYT6h_5jmmR1AW7jCnf_9nC8hcj77GmLaCZ2SawmhHY99OzF0FIIN6haiufaT1KkbKpCGTnzmC3Oi1FaozeU0Iq9w6cCsB6RNLzJj4nkqK-ChT62aHsqcvXATL0ogysVZWo_MtagtCmVnvxS1M?key=E1Wbm5uYcWx3BdjBAIZpaA)
    
- ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXc8dMwgl53sheKcqWfJ-2xS2QHEX7tdpEaI5NdmIGgXKrvsH4lBYqbTM8mF8oMbtKDW2tYAe2ZbEfXGWk8QwdAa76rILfsEH7MTJVw85HGgi6F344zaTmYPDoljJhaBqSYIddjcPd2osDTguYlG4d1Vo-fQ?key=E1Wbm5uYcWx3BdjBAIZpaA)
    
- ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdk2hRYE2sIKFa1KQxPQ5MtW7IgkFfZeib6rurJC6KZy5BEXFaA_U6UXYuVn8putCj6Tqc5ig81_K7thZp2Ww8JX29uBndiebb9sLtSrosu3ZQIyoAbfk3pXNoLYb_8hBzT0b3UYmNJVO76l6CE4jm5uzBE?key=E1Wbm5uYcWx3BdjBAIZpaA)
    
- ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXefH3FqiLFBJ4MaTgpEaK2kVyULLjSNP3M5PcuWOxYfR_6MOuYSjcFX8oKsQyfsu5MZhm-TCGM9hirFG7_orLqvvHqp6qz6iKZoM-hmlf5PF7IFcjdnMCrN5tV05wZTq0odAtPshqF8o0hndvkYZlU0mBeq?key=E1Wbm5uYcWx3BdjBAIZpaA)
    

- Problems
    

- Primary clustering
    

- Cluster: a collection of consecutive occupied slots
    
- Primary cluster: cluster covering home address of a key
    
- Linear probing can create large primary clusters that increase the running time of operations
    
- ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXd90cWaRcMTVOefKCv_eiA6gbL9BWiGR_mojcELB_ywktTV3YuK816WxjdwzhD8NEaMtLBYmJ_g9sWrufM1tzg0WaPybai9iuIL7L1Fl4WEFSCjVdgmoES6w1VZZVSBayIgmN2nowl9Q6Ol2xoa6aotRwpz?key=E1Wbm5uYcWx3BdjBAIZpaA)
    
- ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXcW3G-ugGHigMDFmc7_qlBJCDNX5bj82K_sKzLMOZz_nkuD4Q3QvILLKZ2LLninRhQp4OsUDD2IRfDvgQGtshd_Dmm7RiOxASAC_cUMxe9OC5gtZQtbG5I9IP_zCIusJpPftnZl3Wyt0HI7D9UhbU99EKA?key=E1Wbm5uYcWx3BdjBAIZpaA)
    

- Quadratic probing
    

- Probe sequence
    

- ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXc1ggBSbVuWj7wfXh6shkuGfk426mYktzTJUwZslMnaam2_qdpXGDAFMmkwt1kT9rBb4DPlqZmSb_6C3xZSoGV0GldHTUcSxLsdjXmGbZlTxdRiNGUY70gRviffwtEyqtw-rkwNTytWZ1YGvHWEi9saTbzg?key=E1Wbm5uYcWx3BdjBAIZpaA)
    
- (hash(key) + k^2) % m
    
- K is the number of collisions
    

- Example
    

- ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdfctlz1VrQmQn1PR70XTZYd8WYRf4sH2Aaw-WSQhB92svj98vwoua-V33EEC0v_IYWZAP62N79LNR3JJNp0OncJI3VGnYtQv2G8dgF2wHoNfqM97B4ZNzWHsNc-pM8AX1TeG1t8efFxQLCuINFXwCw8_o?key=E1Wbm5uYcWx3BdjBAIZpaA)
    

- Problems
    

- ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXeeSFZY_hxeieE6aN4L6-gq9Jq2jFsJ92V6OTMgjwCjpy7hbBe8HU8G3QoG0LhVmgaDKGnGvhKPZGOkU-lMtOIJcZxmRgrKW2zDSG5my1UCajzIZMNLGJZq5SvuhzybtPgeiFj-eofW4WevZtSARjRTbzfK?key=E1Wbm5uYcWx3BdjBAIZpaA)
    

- Double hashing
    

- Reduce secondary clustering, by using a second hash function to generate different probe sequences for different keys
    
- ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXd9u9PKpfSg5sVhRX3stUaIH5bZVxAIa7taFy3hW6FA8I_EsIDgMeS3y5ze2Ke1EKZkzdgSTrNobPXT4fKv50rT7JgPRRnOvYbIshASkzFsTCOtvG7A-f2178TmKkKARZYRMv8mparESfLAczlybeAr_Q2p?key=E1Wbm5uYcWx3BdjBAIZpaA)
    

- Number of collisions is not dependent on which index the collision is at
    

- Example
    

- ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXeM-Ou1AR5NWR_1TFyEchrvWrbONdl4qy1RygvLzxssbcvryiGu5Cym5-LNXe8TnRrwFsoAeBT-SbQQnBQmru16ARZplEcnGbU9x60P6JjbzV6U57hVbRqVvN42zFXucbk8_-Fe2Kd1ywVX-7R0Kfanxzc?key=E1Wbm5uYcWx3BdjBAIZpaA)
    

- Problems
    

- ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXeD3EfKKTxrgNRRWr9pXtuhphjmsrQIDDSMgkqgNK0AY7O-X6aXtH0a1-y_MgosbTgTueRoKi0i4R9B4HsFnzLe-pT2aLtbiT-d3IDWWtpvzw1_9FgOxbVppRDPOPnpHtIJcGhg3Xb-PwG58-h7cuPEk7g?key=E1Wbm5uYcWx3BdjBAIZpaA)
    
- Solution
    

- ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXe1660v1Ima8GJ7O6oiwDMvNza-pWpeyMpFuRMfA3Eg0-hQ_sycyTOi2UXPY5ZdMHEfhBOOGeTiiaAJvGQZwK-uekW4pX7zyNo-jSrOw85CxJKrpNGo1fHayOGTwyuB65WnVxe8n34Tagc4IxTrcxNnrS4?key=E1Wbm5uYcWx3BdjBAIZpaA)
    
- ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXfrnStNAQ68zRqUJ1Q6m075_Oiute6myHE2rJjVRzh-LAC1KYmE3BcKzbFYlEvrs_FjVnin6reUUJutGzxAdpxmNuuqKybk7yPVPdXKnA4R1JsJPmEny_wFMGz93zlb03cfQ0MCrDr8LXdJEZwqY-tZJz0?key=E1Wbm5uYcWx3BdjBAIZpaA)
    

  

Rehashing

- ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdtOzY2GvNtAqsHKPRnO7IQc18eUlhzUPefIYjAF5pDmkNjzRQErMoxEdtMh_fcepsf0NILf7cGuEa1UPjhOwKThNhEIFqCIUsnR_QXZexmGyz8oqZwnHIya4N52xQ-gWt_UHxZpvhw0ky7lqu-K-dZa6K5?key=E1Wbm5uYcWx3BdjBAIZpaA)
    

**
module TestUnitedStates

using Dates
using Holidays
using Test

include("../util.jl")

@testset "UnitedStates" begin
    calendar = Holidays.UnitedStates()

    holidays = [
        Date(1900, 1, 1), # New Year's Day
        Date(1900, 2, 22), # Washington's Birthday
        Date(1900, 5, 30), # Memorial Day
        Date(1900, 7, 4), # Independence Day
        Date(1900, 9, 3), # Labor Day
        Date(1900, 11, 29), # Thanksgiving Day
        Date(1900, 12, 25), # Christmas Day
        Date(1901, 1, 1), # New Year's Day
        Date(1901, 2, 22), # Washington's Birthday
        Date(1901, 5, 30), # Memorial Day
        Date(1901, 7, 4), # Independence Day
        Date(1901, 9, 2), # Labor Day
        Date(1901, 11, 28), # Thanksgiving Day
        Date(1901, 12, 25), # Christmas Day
        Date(1902, 1, 1), # New Year's Day
        Date(1902, 2, 22), # Washington's Birthday
        Date(1902, 5, 30), # Memorial Day
        Date(1902, 7, 4), # Independence Day
        Date(1902, 9, 1), # Labor Day
        Date(1902, 11, 27), # Thanksgiving Day
        Date(1902, 12, 25), # Christmas Day
        Date(1903, 1, 1), # New Year's Day
        Date(1903, 2, 22), # Washington's Birthday
        Date(1903, 5, 30), # Memorial Day
        Date(1903, 7, 4), # Independence Day
        Date(1903, 9, 7), # Labor Day
        Date(1903, 11, 26), # Thanksgiving Day
        Date(1903, 12, 25), # Christmas Day
        Date(1904, 1, 1), # New Year's Day
        Date(1904, 2, 22), # Washington's Birthday
        Date(1904, 5, 30), # Memorial Day
        Date(1904, 7, 4), # Independence Day
        Date(1904, 9, 5), # Labor Day
        Date(1904, 11, 24), # Thanksgiving Day
        Date(1904, 12, 25), # Christmas Day
        Date(1905, 1, 1), # New Year's Day
        Date(1905, 2, 22), # Washington's Birthday
        Date(1905, 5, 30), # Memorial Day
        Date(1905, 7, 4), # Independence Day
        Date(1905, 9, 4), # Labor Day
        Date(1905, 11, 30), # Thanksgiving Day
        Date(1905, 12, 25), # Christmas Day
        Date(1906, 1, 1), # New Year's Day
        Date(1906, 2, 22), # Washington's Birthday
        Date(1906, 5, 30), # Memorial Day
        Date(1906, 7, 4), # Independence Day
        Date(1906, 9, 3), # Labor Day
        Date(1906, 11, 29), # Thanksgiving Day
        Date(1906, 12, 25), # Christmas Day
        Date(1907, 1, 1), # New Year's Day
        Date(1907, 2, 22), # Washington's Birthday
        Date(1907, 5, 30), # Memorial Day
        Date(1907, 7, 4), # Independence Day
        Date(1907, 9, 2), # Labor Day
        Date(1907, 11, 28), # Thanksgiving Day
        Date(1907, 12, 25), # Christmas Day
        Date(1908, 1, 1), # New Year's Day
        Date(1908, 2, 22), # Washington's Birthday
        Date(1908, 5, 30), # Memorial Day
        Date(1908, 7, 4), # Independence Day
        Date(1908, 9, 7), # Labor Day
        Date(1908, 11, 26), # Thanksgiving Day
        Date(1908, 12, 25), # Christmas Day
        Date(1909, 1, 1), # New Year's Day
        Date(1909, 2, 22), # Washington's Birthday
        Date(1909, 5, 30), # Memorial Day
        Date(1909, 7, 4), # Independence Day
        Date(1909, 9, 6), # Labor Day
        Date(1909, 11, 25), # Thanksgiving Day
        Date(1909, 12, 25), # Christmas Day
        Date(1910, 1, 1), # New Year's Day
        Date(1910, 2, 22), # Washington's Birthday
        Date(1910, 5, 30), # Memorial Day
        Date(1910, 7, 4), # Independence Day
        Date(1910, 9, 5), # Labor Day
        Date(1910, 11, 24), # Thanksgiving Day
        Date(1910, 12, 25), # Christmas Day
        Date(1911, 1, 1), # New Year's Day
        Date(1911, 2, 22), # Washington's Birthday
        Date(1911, 5, 30), # Memorial Day
        Date(1911, 7, 4), # Independence Day
        Date(1911, 9, 4), # Labor Day
        Date(1911, 11, 30), # Thanksgiving Day
        Date(1911, 12, 25), # Christmas Day
        Date(1912, 1, 1), # New Year's Day
        Date(1912, 2, 22), # Washington's Birthday
        Date(1912, 5, 30), # Memorial Day
        Date(1912, 7, 4), # Independence Day
        Date(1912, 9, 2), # Labor Day
        Date(1912, 11, 28), # Thanksgiving Day
        Date(1912, 12, 25), # Christmas Day
        Date(1913, 1, 1), # New Year's Day
        Date(1913, 2, 22), # Washington's Birthday
        Date(1913, 5, 30), # Memorial Day
        Date(1913, 7, 4), # Independence Day
        Date(1913, 9, 1), # Labor Day
        Date(1913, 11, 27), # Thanksgiving Day
        Date(1913, 12, 25), # Christmas Day
        Date(1914, 1, 1), # New Year's Day
        Date(1914, 2, 22), # Washington's Birthday
        Date(1914, 5, 30), # Memorial Day
        Date(1914, 7, 4), # Independence Day
        Date(1914, 9, 7), # Labor Day
        Date(1914, 11, 26), # Thanksgiving Day
        Date(1914, 12, 25), # Christmas Day
        Date(1915, 1, 1), # New Year's Day
        Date(1915, 2, 22), # Washington's Birthday
        Date(1915, 5, 30), # Memorial Day
        Date(1915, 7, 4), # Independence Day
        Date(1915, 9, 6), # Labor Day
        Date(1915, 11, 25), # Thanksgiving Day
        Date(1915, 12, 25), # Christmas Day
        Date(1916, 1, 1), # New Year's Day
        Date(1916, 2, 22), # Washington's Birthday
        Date(1916, 5, 30), # Memorial Day
        Date(1916, 7, 4), # Independence Day
        Date(1916, 9, 4), # Labor Day
        Date(1916, 11, 30), # Thanksgiving Day
        Date(1916, 12, 25), # Christmas Day
        Date(1917, 1, 1), # New Year's Day
        Date(1917, 2, 22), # Washington's Birthday
        Date(1917, 5, 30), # Memorial Day
        Date(1917, 7, 4), # Independence Day
        Date(1917, 9, 3), # Labor Day
        Date(1917, 11, 29), # Thanksgiving Day
        Date(1917, 12, 25), # Christmas Day
        Date(1918, 1, 1), # New Year's Day
        Date(1918, 2, 22), # Washington's Birthday
        Date(1918, 5, 30), # Memorial Day
        Date(1918, 7, 4), # Independence Day
        Date(1918, 9, 2), # Labor Day
        Date(1918, 11, 28), # Thanksgiving Day
        Date(1918, 12, 25), # Christmas Day
        Date(1919, 1, 1), # New Year's Day
        Date(1919, 2, 22), # Washington's Birthday
        Date(1919, 5, 30), # Memorial Day
        Date(1919, 7, 4), # Independence Day
        Date(1919, 9, 1), # Labor Day
        Date(1919, 11, 27), # Thanksgiving Day
        Date(1919, 12, 25), # Christmas Day
        Date(1920, 1, 1), # New Year's Day
        Date(1920, 2, 22), # Washington's Birthday
        Date(1920, 5, 30), # Memorial Day
        Date(1920, 7, 4), # Independence Day
        Date(1920, 9, 6), # Labor Day
        Date(1920, 11, 25), # Thanksgiving Day
        Date(1920, 12, 25), # Christmas Day
        Date(1921, 1, 1), # New Year's Day
        Date(1921, 2, 22), # Washington's Birthday
        Date(1921, 5, 30), # Memorial Day
        Date(1921, 7, 4), # Independence Day
        Date(1921, 9, 5), # Labor Day
        Date(1921, 11, 24), # Thanksgiving Day
        Date(1921, 12, 25), # Christmas Day
        Date(1922, 1, 1), # New Year's Day
        Date(1922, 2, 22), # Washington's Birthday
        Date(1922, 5, 30), # Memorial Day
        Date(1922, 7, 4), # Independence Day
        Date(1922, 9, 4), # Labor Day
        Date(1922, 11, 30), # Thanksgiving Day
        Date(1922, 12, 25), # Christmas Day
        Date(1923, 1, 1), # New Year's Day
        Date(1923, 2, 22), # Washington's Birthday
        Date(1923, 5, 30), # Memorial Day
        Date(1923, 7, 4), # Independence Day
        Date(1923, 9, 3), # Labor Day
        Date(1923, 11, 29), # Thanksgiving Day
        Date(1923, 12, 25), # Christmas Day
        Date(1924, 1, 1), # New Year's Day
        Date(1924, 2, 22), # Washington's Birthday
        Date(1924, 5, 30), # Memorial Day
        Date(1924, 7, 4), # Independence Day
        Date(1924, 9, 1), # Labor Day
        Date(1924, 11, 27), # Thanksgiving Day
        Date(1924, 12, 25), # Christmas Day
        Date(1925, 1, 1), # New Year's Day
        Date(1925, 2, 22), # Washington's Birthday
        Date(1925, 5, 30), # Memorial Day
        Date(1925, 7, 4), # Independence Day
        Date(1925, 9, 7), # Labor Day
        Date(1925, 11, 26), # Thanksgiving Day
        Date(1925, 12, 25), # Christmas Day
        Date(1926, 1, 1), # New Year's Day
        Date(1926, 2, 22), # Washington's Birthday
        Date(1926, 5, 30), # Memorial Day
        Date(1926, 7, 4), # Independence Day
        Date(1926, 9, 6), # Labor Day
        Date(1926, 11, 25), # Thanksgiving Day
        Date(1926, 12, 25), # Christmas Day
        Date(1927, 1, 1), # New Year's Day
        Date(1927, 2, 22), # Washington's Birthday
        Date(1927, 5, 30), # Memorial Day
        Date(1927, 7, 4), # Independence Day
        Date(1927, 9, 5), # Labor Day
        Date(1927, 11, 24), # Thanksgiving Day
        Date(1927, 12, 25), # Christmas Day
        Date(1928, 1, 1), # New Year's Day
        Date(1928, 2, 22), # Washington's Birthday
        Date(1928, 5, 30), # Memorial Day
        Date(1928, 7, 4), # Independence Day
        Date(1928, 9, 3), # Labor Day
        Date(1928, 11, 29), # Thanksgiving Day
        Date(1928, 12, 25), # Christmas Day
        Date(1929, 1, 1), # New Year's Day
        Date(1929, 2, 22), # Washington's Birthday
        Date(1929, 5, 30), # Memorial Day
        Date(1929, 7, 4), # Independence Day
        Date(1929, 9, 2), # Labor Day
        Date(1929, 11, 28), # Thanksgiving Day
        Date(1929, 12, 25), # Christmas Day
        Date(1930, 1, 1), # New Year's Day
        Date(1930, 2, 22), # Washington's Birthday
        Date(1930, 5, 30), # Memorial Day
        Date(1930, 7, 4), # Independence Day
        Date(1930, 9, 1), # Labor Day
        Date(1930, 11, 27), # Thanksgiving Day
        Date(1930, 12, 25), # Christmas Day
        Date(1931, 1, 1), # New Year's Day
        Date(1931, 2, 22), # Washington's Birthday
        Date(1931, 5, 30), # Memorial Day
        Date(1931, 7, 4), # Independence Day
        Date(1931, 9, 7), # Labor Day
        Date(1931, 11, 26), # Thanksgiving Day
        Date(1931, 12, 25), # Christmas Day
        Date(1932, 1, 1), # New Year's Day
        Date(1932, 2, 22), # Washington's Birthday
        Date(1932, 5, 30), # Memorial Day
        Date(1932, 7, 4), # Independence Day
        Date(1932, 9, 5), # Labor Day
        Date(1932, 11, 24), # Thanksgiving Day
        Date(1932, 12, 25), # Christmas Day
        Date(1933, 1, 1), # New Year's Day
        Date(1933, 2, 22), # Washington's Birthday
        Date(1933, 5, 30), # Memorial Day
        Date(1933, 7, 4), # Independence Day
        Date(1933, 9, 4), # Labor Day
        Date(1933, 11, 30), # Thanksgiving Day
        Date(1933, 12, 25), # Christmas Day
        Date(1934, 1, 1), # New Year's Day
        Date(1934, 2, 22), # Washington's Birthday
        Date(1934, 5, 30), # Memorial Day
        Date(1934, 7, 4), # Independence Day
        Date(1934, 9, 3), # Labor Day
        Date(1934, 11, 29), # Thanksgiving Day
        Date(1934, 12, 25), # Christmas Day
        Date(1935, 1, 1), # New Year's Day
        Date(1935, 2, 22), # Washington's Birthday
        Date(1935, 5, 30), # Memorial Day
        Date(1935, 7, 4), # Independence Day
        Date(1935, 9, 2), # Labor Day
        Date(1935, 11, 28), # Thanksgiving Day
        Date(1935, 12, 25), # Christmas Day
        Date(1936, 1, 1), # New Year's Day
        Date(1936, 2, 22), # Washington's Birthday
        Date(1936, 5, 30), # Memorial Day
        Date(1936, 7, 4), # Independence Day
        Date(1936, 9, 7), # Labor Day
        Date(1936, 11, 26), # Thanksgiving Day
        Date(1936, 12, 25), # Christmas Day
        Date(1937, 1, 1), # New Year's Day
        Date(1937, 2, 22), # Washington's Birthday
        Date(1937, 5, 30), # Memorial Day
        Date(1937, 7, 4), # Independence Day
        Date(1937, 9, 6), # Labor Day
        Date(1937, 10, 12), # Columbus Day
        Date(1937, 11, 25), # Thanksgiving Day
        Date(1937, 12, 25), # Christmas Day
        Date(1938, 1, 1), # New Year's Day
        Date(1938, 2, 22), # Washington's Birthday
        Date(1938, 5, 30), # Memorial Day
        Date(1938, 7, 4), # Independence Day
        Date(1938, 9, 5), # Labor Day
        Date(1938, 10, 12), # Columbus Day
        Date(1938, 11, 11), # Armistice Day
        Date(1938, 11, 24), # Thanksgiving Day
        Date(1938, 12, 25), # Christmas Day
        Date(1939, 1, 1), # New Year's Day
        Date(1939, 2, 22), # Washington's Birthday
        Date(1939, 5, 30), # Memorial Day
        Date(1939, 7, 4), # Independence Day
        Date(1939, 9, 4), # Labor Day
        Date(1939, 10, 12), # Columbus Day
        Date(1939, 11, 11), # Armistice Day
        Date(1939, 11, 23), # Thanksgiving Day
        Date(1939, 12, 25), # Christmas Day
        Date(1940, 1, 1), # New Year's Day
        Date(1940, 2, 22), # Washington's Birthday
        Date(1940, 5, 30), # Memorial Day
        Date(1940, 7, 4), # Independence Day
        Date(1940, 9, 2), # Labor Day
        Date(1940, 10, 12), # Columbus Day
        Date(1940, 11, 11), # Armistice Day
        Date(1940, 11, 21), # Thanksgiving Day
        Date(1940, 12, 25), # Christmas Day
        Date(1941, 1, 1), # New Year's Day
        Date(1941, 2, 22), # Washington's Birthday
        Date(1941, 5, 30), # Memorial Day
        Date(1941, 7, 4), # Independence Day
        Date(1941, 9, 1), # Labor Day
        Date(1941, 10, 12), # Columbus Day
        Date(1941, 11, 11), # Armistice Day
        Date(1941, 11, 20), # Thanksgiving Day
        Date(1941, 12, 25), # Christmas Day
        Date(1942, 1, 1), # New Year's Day
        Date(1942, 2, 22), # Washington's Birthday
        Date(1942, 5, 30), # Memorial Day
        Date(1942, 7, 4), # Independence Day
        Date(1942, 9, 7), # Labor Day
        Date(1942, 10, 12), # Columbus Day
        Date(1942, 11, 11), # Armistice Day
        Date(1942, 11, 26), # Thanksgiving Day
        Date(1942, 12, 25), # Christmas Day
        Date(1943, 1, 1), # New Year's Day
        Date(1943, 2, 22), # Washington's Birthday
        Date(1943, 5, 30), # Memorial Day
        Date(1943, 7, 4), # Independence Day
        Date(1943, 9, 6), # Labor Day
        Date(1943, 10, 12), # Columbus Day
        Date(1943, 11, 11), # Armistice Day
        Date(1943, 11, 25), # Thanksgiving Day
        Date(1943, 12, 25), # Christmas Day
        Date(1944, 1, 1), # New Year's Day
        Date(1944, 2, 22), # Washington's Birthday
        Date(1944, 5, 30), # Memorial Day
        Date(1944, 7, 4), # Independence Day
        Date(1944, 9, 4), # Labor Day
        Date(1944, 10, 12), # Columbus Day
        Date(1944, 11, 11), # Armistice Day
        Date(1944, 11, 23), # Thanksgiving Day
        Date(1944, 12, 25), # Christmas Day
        Date(1945, 1, 1), # New Year's Day
        Date(1945, 2, 22), # Washington's Birthday
        Date(1945, 5, 30), # Memorial Day
        Date(1945, 7, 4), # Independence Day
        Date(1945, 9, 3), # Labor Day
        Date(1945, 10, 12), # Columbus Day
        Date(1945, 11, 11), # Armistice Day
        Date(1945, 11, 22), # Thanksgiving Day
        Date(1945, 12, 25), # Christmas Day
        Date(1946, 1, 1), # New Year's Day
        Date(1946, 2, 22), # Washington's Birthday
        Date(1946, 5, 30), # Memorial Day
        Date(1946, 7, 4), # Independence Day
        Date(1946, 9, 2), # Labor Day
        Date(1946, 10, 12), # Columbus Day
        Date(1946, 11, 11), # Armistice Day
        Date(1946, 11, 28), # Thanksgiving Day
        Date(1946, 12, 25), # Christmas Day
        Date(1947, 1, 1), # New Year's Day
        Date(1947, 2, 22), # Washington's Birthday
        Date(1947, 5, 30), # Memorial Day
        Date(1947, 7, 4), # Independence Day
        Date(1947, 9, 1), # Labor Day
        Date(1947, 10, 12), # Columbus Day
        Date(1947, 11, 11), # Armistice Day
        Date(1947, 11, 27), # Thanksgiving Day
        Date(1947, 12, 25), # Christmas Day
        Date(1948, 1, 1), # New Year's Day
        Date(1948, 2, 22), # Washington's Birthday
        Date(1948, 5, 30), # Memorial Day
        Date(1948, 7, 4), # Independence Day
        Date(1948, 9, 6), # Labor Day
        Date(1948, 10, 12), # Columbus Day
        Date(1948, 11, 11), # Armistice Day
        Date(1948, 11, 25), # Thanksgiving Day
        Date(1948, 12, 25), # Christmas Day
        Date(1949, 1, 1), # New Year's Day
        Date(1949, 2, 22), # Washington's Birthday
        Date(1949, 5, 30), # Memorial Day
        Date(1949, 7, 4), # Independence Day
        Date(1949, 9, 5), # Labor Day
        Date(1949, 10, 12), # Columbus Day
        Date(1949, 11, 11), # Armistice Day
        Date(1949, 11, 24), # Thanksgiving Day
        Date(1949, 12, 25), # Christmas Day
        Date(1950, 1, 1), # New Year's Day
        Date(1950, 2, 22), # Washington's Birthday
        Date(1950, 5, 30), # Memorial Day
        Date(1950, 7, 4), # Independence Day
        Date(1950, 9, 4), # Labor Day
        Date(1950, 10, 12), # Columbus Day
        Date(1950, 11, 11), # Armistice Day
        Date(1950, 11, 23), # Thanksgiving Day
        Date(1950, 12, 25), # Christmas Day
        Date(1951, 1, 1), # New Year's Day
        Date(1951, 2, 22), # Washington's Birthday
        Date(1951, 5, 30), # Memorial Day
        Date(1951, 7, 4), # Independence Day
        Date(1951, 9, 3), # Labor Day
        Date(1951, 10, 12), # Columbus Day
        Date(1951, 11, 11), # Armistice Day
        Date(1951, 11, 22), # Thanksgiving Day
        Date(1951, 12, 25), # Christmas Day
        Date(1952, 1, 1), # New Year's Day
        Date(1952, 2, 22), # Washington's Birthday
        Date(1952, 5, 30), # Memorial Day
        Date(1952, 7, 4), # Independence Day
        Date(1952, 9, 1), # Labor Day
        Date(1952, 10, 12), # Columbus Day
        Date(1952, 11, 11), # Armistice Day
        Date(1952, 11, 27), # Thanksgiving Day
        Date(1952, 12, 25), # Christmas Day
        Date(1953, 1, 1), # New Year's Day
        Date(1953, 2, 22), # Washington's Birthday
        Date(1953, 5, 30), # Memorial Day
        Date(1953, 7, 4), # Independence Day
        Date(1953, 9, 7), # Labor Day
        Date(1953, 10, 12), # Columbus Day
        Date(1953, 11, 11), # Armistice Day
        Date(1953, 11, 26), # Thanksgiving Day
        Date(1953, 12, 25), # Christmas Day
        Date(1954, 1, 1), # New Year's Day
        Date(1954, 2, 22), # Washington's Birthday
        Date(1954, 5, 30), # Memorial Day
        Date(1954, 7, 4), # Independence Day
        Date(1954, 7, 5), # Independence Day (observed)
        Date(1954, 9, 6), # Labor Day
        Date(1954, 10, 12), # Columbus Day
        Date(1954, 11, 11), # Veterans Day
        Date(1954, 11, 25), # Thanksgiving Day
        Date(1954, 12, 25), # Christmas Day
        Date(1955, 1, 1), # New Year's Day
        Date(1955, 2, 22), # Washington's Birthday
        Date(1955, 5, 30), # Memorial Day
        Date(1955, 7, 4), # Independence Day
        Date(1955, 9, 5), # Labor Day
        Date(1955, 10, 12), # Columbus Day
        Date(1955, 11, 11), # Veterans Day
        Date(1955, 11, 24), # Thanksgiving Day
        Date(1955, 12, 25), # Christmas Day
        Date(1955, 12, 26), # Christmas Day (observed)
        Date(1956, 1, 1), # New Year's Day
        Date(1956, 1, 2), # New Year's Day (observed)
        Date(1956, 2, 22), # Washington's Birthday
        Date(1956, 5, 30), # Memorial Day
        Date(1956, 7, 4), # Independence Day
        Date(1956, 9, 3), # Labor Day
        Date(1956, 10, 12), # Columbus Day
        Date(1956, 11, 11), # Veterans Day
        Date(1956, 11, 12), # Veterans Day (observed)
        Date(1956, 11, 22), # Thanksgiving Day
        Date(1956, 12, 25), # Christmas Day
        Date(1957, 1, 1), # New Year's Day
        Date(1957, 2, 22), # Washington's Birthday
        Date(1957, 5, 30), # Memorial Day
        Date(1957, 7, 4), # Independence Day
        Date(1957, 9, 2), # Labor Day
        Date(1957, 10, 12), # Columbus Day
        Date(1957, 11, 11), # Veterans Day
        Date(1957, 11, 28), # Thanksgiving Day
        Date(1957, 12, 25), # Christmas Day
        Date(1958, 1, 1), # New Year's Day
        Date(1958, 2, 22), # Washington's Birthday
        Date(1958, 5, 30), # Memorial Day
        Date(1958, 7, 4), # Independence Day
        Date(1958, 9, 1), # Labor Day
        Date(1958, 10, 12), # Columbus Day
        Date(1958, 11, 11), # Veterans Day
        Date(1958, 11, 27), # Thanksgiving Day
        Date(1958, 12, 25), # Christmas Day
        Date(1959, 1, 1), # New Year's Day
        Date(1959, 2, 22), # Washington's Birthday
        Date(1959, 5, 30), # Memorial Day
        Date(1959, 7, 4), # Independence Day
        Date(1959, 9, 7), # Labor Day
        Date(1959, 10, 12), # Columbus Day
        Date(1959, 11, 11), # Veterans Day
        Date(1959, 11, 26), # Thanksgiving Day
        Date(1959, 12, 25), # Christmas Day
        Date(1960, 1, 1), # New Year's Day
        Date(1960, 2, 22), # Washington's Birthday
        Date(1960, 5, 30), # Memorial Day
        Date(1960, 7, 4), # Independence Day
        Date(1960, 9, 5), # Labor Day
        Date(1960, 10, 12), # Columbus Day
        Date(1960, 11, 11), # Veterans Day
        Date(1960, 11, 24), # Thanksgiving Day
        Date(1960, 12, 25), # Christmas Day
        Date(1960, 12, 26), # Christmas Day (observed)
        Date(1961, 1, 1), # New Year's Day
        Date(1961, 1, 2), # New Year's Day (observed)
        Date(1961, 2, 22), # Washington's Birthday
        Date(1961, 5, 30), # Memorial Day
        Date(1961, 7, 4), # Independence Day
        Date(1961, 9, 4), # Labor Day
        Date(1961, 10, 12), # Columbus Day
        Date(1961, 11, 11), # Veterans Day
        Date(1961, 11, 23), # Thanksgiving Day
        Date(1961, 12, 25), # Christmas Day
        Date(1962, 1, 1), # New Year's Day
        Date(1962, 2, 22), # Washington's Birthday
        Date(1962, 5, 30), # Memorial Day
        Date(1962, 7, 4), # Independence Day
        Date(1962, 9, 3), # Labor Day
        Date(1962, 10, 12), # Columbus Day
        Date(1962, 11, 11), # Veterans Day
        Date(1962, 11, 12), # Veterans Day (observed)
        Date(1962, 11, 22), # Thanksgiving Day
        Date(1962, 12, 25), # Christmas Day
        Date(1963, 1, 1), # New Year's Day
        Date(1963, 2, 22), # Washington's Birthday
        Date(1963, 5, 30), # Memorial Day
        Date(1963, 7, 4), # Independence Day
        Date(1963, 9, 2), # Labor Day
        Date(1963, 10, 12), # Columbus Day
        Date(1963, 11, 11), # Veterans Day
        Date(1963, 11, 28), # Thanksgiving Day
        Date(1963, 12, 25), # Christmas Day
        Date(1964, 1, 1), # New Year's Day
        Date(1964, 2, 22), # Washington's Birthday
        Date(1964, 5, 30), # Memorial Day
        Date(1964, 7, 4), # Independence Day
        Date(1964, 9, 7), # Labor Day
        Date(1964, 10, 12), # Columbus Day
        Date(1964, 11, 11), # Veterans Day
        Date(1964, 11, 26), # Thanksgiving Day
        Date(1964, 12, 25), # Christmas Day
        Date(1965, 1, 1), # New Year's Day
        Date(1965, 2, 22), # Washington's Birthday
        Date(1965, 5, 30), # Memorial Day
        Date(1965, 7, 4), # Independence Day
        Date(1965, 7, 5), # Independence Day (observed)
        Date(1965, 9, 6), # Labor Day
        Date(1965, 10, 12), # Columbus Day
        Date(1965, 11, 11), # Veterans Day
        Date(1965, 11, 25), # Thanksgiving Day
        Date(1965, 12, 25), # Christmas Day
        Date(1966, 1, 1), # New Year's Day
        Date(1966, 2, 22), # Washington's Birthday
        Date(1966, 5, 30), # Memorial Day
        Date(1966, 7, 4), # Independence Day
        Date(1966, 9, 5), # Labor Day
        Date(1966, 10, 12), # Columbus Day
        Date(1966, 11, 11), # Veterans Day
        Date(1966, 11, 24), # Thanksgiving Day
        Date(1966, 12, 25), # Christmas Day
        Date(1966, 12, 26), # Christmas Day (observed)
        Date(1967, 1, 1), # New Year's Day
        Date(1967, 1, 2), # New Year's Day (observed)
        Date(1967, 2, 22), # Washington's Birthday
        Date(1967, 5, 30), # Memorial Day
        Date(1967, 7, 4), # Independence Day
        Date(1967, 9, 4), # Labor Day
        Date(1967, 10, 12), # Columbus Day
        Date(1967, 11, 10), # Veterans Day (observed)
        Date(1967, 11, 11), # Veterans Day
        Date(1967, 11, 23), # Thanksgiving Day
        Date(1967, 12, 25), # Christmas Day
        Date(1968, 1, 1), # New Year's Day
        Date(1968, 2, 22), # Washington's Birthday
        Date(1968, 5, 30), # Memorial Day
        Date(1968, 7, 4), # Independence Day
        Date(1968, 9, 2), # Labor Day
        Date(1968, 10, 12), # Columbus Day
        Date(1968, 11, 11), # Veterans Day
        Date(1968, 11, 28), # Thanksgiving Day
        Date(1968, 12, 25), # Christmas Day
        Date(1969, 1, 1), # New Year's Day
        Date(1969, 2, 22), # Washington's Birthday
        Date(1969, 5, 30), # Memorial Day
        Date(1969, 7, 4), # Independence Day
        Date(1969, 9, 1), # Labor Day
        Date(1969, 10, 12), # Columbus Day
        Date(1969, 11, 11), # Veterans Day
        Date(1969, 11, 27), # Thanksgiving Day
        Date(1969, 12, 25), # Christmas Day
        Date(1970, 1, 1), # New Year's Day
        Date(1970, 2, 22), # Washington's Birthday
        Date(1970, 5, 30), # Memorial Day
        Date(1970, 7, 3), # Independence Day (observed)
        Date(1970, 7, 4), # Independence Day
        Date(1970, 9, 7), # Labor Day
        Date(1970, 10, 12), # Columbus Day
        Date(1970, 11, 11), # Veterans Day
        Date(1970, 11, 26), # Thanksgiving Day
        Date(1970, 12, 25), # Christmas Day
        Date(1971, 1, 1), # New Year's Day
        Date(1971, 2, 15), # Washington's Birthday
        Date(1971, 5, 31), # Memorial Day
        Date(1971, 7, 4), # Independence Day
        Date(1971, 7, 5), # Independence Day (observed)
        Date(1971, 9, 6), # Labor Day
        Date(1971, 10, 11), # Columbus Day
        Date(1971, 10, 25), # Veterans Day
        Date(1971, 11, 25), # Thanksgiving Day
        Date(1971, 12, 24), # Christmas Day (observed)
        Date(1971, 12, 25), # Christmas Day
        Date(1971, 12, 31), # New Year's Day (observed)
        Date(1972, 1, 1), # New Year's Day
        Date(1972, 2, 21), # Washington's Birthday
        Date(1972, 5, 29), # Memorial Day
        Date(1972, 7, 4), # Independence Day
        Date(1972, 9, 4), # Labor Day
        Date(1972, 10, 9), # Columbus Day
        Date(1972, 10, 23), # Veterans Day
        Date(1972, 11, 23), # Thanksgiving Day
        Date(1972, 12, 25), # Christmas Day
        Date(1973, 1, 1), # New Year's Day
        Date(1973, 2, 19), # Washington's Birthday
        Date(1973, 5, 28), # Memorial Day
        Date(1973, 7, 4), # Independence Day
        Date(1973, 9, 3), # Labor Day
        Date(1973, 10, 8), # Columbus Day
        Date(1973, 10, 22), # Veterans Day
        Date(1973, 11, 22), # Thanksgiving Day
        Date(1973, 12, 25), # Christmas Day
        Date(1974, 1, 1), # New Year's Day
        Date(1974, 2, 18), # Washington's Birthday
        Date(1974, 5, 27), # Memorial Day
        Date(1974, 7, 4), # Independence Day
        Date(1974, 9, 2), # Labor Day
        Date(1974, 10, 14), # Columbus Day
        Date(1974, 10, 28), # Veterans Day
        Date(1974, 11, 28), # Thanksgiving Day
        Date(1974, 12, 25), # Christmas Day
        Date(1975, 1, 1), # New Year's Day
        Date(1975, 2, 17), # Washington's Birthday
        Date(1975, 5, 26), # Memorial Day
        Date(1975, 7, 4), # Independence Day
        Date(1975, 9, 1), # Labor Day
        Date(1975, 10, 13), # Columbus Day
        Date(1975, 10, 27), # Veterans Day
        Date(1975, 11, 27), # Thanksgiving Day
        Date(1975, 12, 25), # Christmas Day
        Date(1976, 1, 1), # New Year's Day
        Date(1976, 2, 16), # Washington's Birthday
        Date(1976, 5, 31), # Memorial Day
        Date(1976, 7, 4), # Independence Day
        Date(1976, 7, 5), # Independence Day (observed)
        Date(1976, 9, 6), # Labor Day
        Date(1976, 10, 11), # Columbus Day
        Date(1976, 10, 25), # Veterans Day
        Date(1976, 11, 25), # Thanksgiving Day
        Date(1976, 12, 24), # Christmas Day (observed)
        Date(1976, 12, 25), # Christmas Day
        Date(1976, 12, 31), # New Year's Day (observed)
        Date(1977, 1, 1), # New Year's Day
        Date(1977, 2, 21), # Washington's Birthday
        Date(1977, 5, 30), # Memorial Day
        Date(1977, 7, 4), # Independence Day
        Date(1977, 9, 5), # Labor Day
        Date(1977, 10, 10), # Columbus Day
        Date(1977, 10, 24), # Veterans Day
        Date(1977, 11, 24), # Thanksgiving Day
        Date(1977, 12, 25), # Christmas Day
        Date(1977, 12, 26), # Christmas Day (observed)
        Date(1978, 1, 1), # New Year's Day
        Date(1978, 1, 2), # New Year's Day (observed)
        Date(1978, 2, 20), # Washington's Birthday
        Date(1978, 5, 29), # Memorial Day
        Date(1978, 7, 4), # Independence Day
        Date(1978, 9, 4), # Labor Day
        Date(1978, 10, 9), # Columbus Day
        Date(1978, 11, 10), # Veterans Day (observed)
        Date(1978, 11, 11), # Veterans Day
        Date(1978, 11, 23), # Thanksgiving Day
        Date(1978, 12, 25), # Christmas Day
        Date(1979, 1, 1), # New Year's Day
        Date(1979, 2, 19), # Washington's Birthday
        Date(1979, 5, 28), # Memorial Day
        Date(1979, 7, 4), # Independence Day
        Date(1979, 9, 3), # Labor Day
        Date(1979, 10, 8), # Columbus Day
        Date(1979, 11, 11), # Veterans Day
        Date(1979, 11, 12), # Veterans Day (observed)
        Date(1979, 11, 22), # Thanksgiving Day
        Date(1979, 12, 25), # Christmas Day
        Date(1980, 1, 1), # New Year's Day
        Date(1980, 2, 18), # Washington's Birthday
        Date(1980, 5, 26), # Memorial Day
        Date(1980, 7, 4), # Independence Day
        Date(1980, 9, 1), # Labor Day
        Date(1980, 10, 13), # Columbus Day
        Date(1980, 11, 11), # Veterans Day
        Date(1980, 11, 27), # Thanksgiving Day
        Date(1980, 12, 25), # Christmas Day
        Date(1981, 1, 1), # New Year's Day
        Date(1981, 2, 16), # Washington's Birthday
        Date(1981, 5, 25), # Memorial Day
        Date(1981, 7, 3), # Independence Day (observed)
        Date(1981, 7, 4), # Independence Day
        Date(1981, 9, 7), # Labor Day
        Date(1981, 10, 12), # Columbus Day
        Date(1981, 11, 11), # Veterans Day
        Date(1981, 11, 26), # Thanksgiving Day
        Date(1981, 12, 25), # Christmas Day
        Date(1982, 1, 1), # New Year's Day
        Date(1982, 2, 15), # Washington's Birthday
        Date(1982, 5, 31), # Memorial Day
        Date(1982, 7, 4), # Independence Day
        Date(1982, 7, 5), # Independence Day (observed)
        Date(1982, 9, 6), # Labor Day
        Date(1982, 10, 11), # Columbus Day
        Date(1982, 11, 11), # Veterans Day
        Date(1982, 11, 25), # Thanksgiving Day
        Date(1982, 12, 24), # Christmas Day (observed)
        Date(1982, 12, 25), # Christmas Day
        Date(1982, 12, 31), # New Year's Day (observed)
        Date(1983, 1, 1), # New Year's Day
        Date(1983, 2, 21), # Washington's Birthday
        Date(1983, 5, 30), # Memorial Day
        Date(1983, 7, 4), # Independence Day
        Date(1983, 9, 5), # Labor Day
        Date(1983, 10, 10), # Columbus Day
        Date(1983, 11, 11), # Veterans Day
        Date(1983, 11, 24), # Thanksgiving Day
        Date(1983, 12, 25), # Christmas Day
        Date(1983, 12, 26), # Christmas Day (observed)
        Date(1984, 1, 1), # New Year's Day
        Date(1984, 1, 2), # New Year's Day (observed)
        Date(1984, 2, 20), # Washington's Birthday
        Date(1984, 5, 28), # Memorial Day
        Date(1984, 7, 4), # Independence Day
        Date(1984, 9, 3), # Labor Day
        Date(1984, 10, 8), # Columbus Day
        Date(1984, 11, 11), # Veterans Day
        Date(1984, 11, 12), # Veterans Day (observed)
        Date(1984, 11, 22), # Thanksgiving Day
        Date(1984, 12, 25), # Christmas Day
        Date(1985, 1, 1), # New Year's Day
        Date(1985, 2, 18), # Washington's Birthday
        Date(1985, 5, 27), # Memorial Day
        Date(1985, 7, 4), # Independence Day
        Date(1985, 9, 2), # Labor Day
        Date(1985, 10, 14), # Columbus Day
        Date(1985, 11, 11), # Veterans Day
        Date(1985, 11, 28), # Thanksgiving Day
        Date(1985, 12, 25), # Christmas Day
        Date(1986, 1, 1), # New Year's Day
        Date(1986, 1, 20), # Martin Luther King Jr. Day
        Date(1986, 2, 17), # Washington's Birthday
        Date(1986, 5, 26), # Memorial Day
        Date(1986, 7, 4), # Independence Day
        Date(1986, 9, 1), # Labor Day
        Date(1986, 10, 13), # Columbus Day
        Date(1986, 11, 11), # Veterans Day
        Date(1986, 11, 27), # Thanksgiving Day
        Date(1986, 12, 25), # Christmas Day
        Date(1987, 1, 1), # New Year's Day
        Date(1987, 1, 19), # Martin Luther King Jr. Day
        Date(1987, 2, 16), # Washington's Birthday
        Date(1987, 5, 25), # Memorial Day
        Date(1987, 7, 3), # Independence Day (observed)
        Date(1987, 7, 4), # Independence Day
        Date(1987, 9, 7), # Labor Day
        Date(1987, 10, 12), # Columbus Day
        Date(1987, 11, 11), # Veterans Day
        Date(1987, 11, 26), # Thanksgiving Day
        Date(1987, 12, 25), # Christmas Day
        Date(1988, 1, 1), # New Year's Day
        Date(1988, 1, 18), # Martin Luther King Jr. Day
        Date(1988, 2, 15), # Washington's Birthday
        Date(1988, 5, 30), # Memorial Day
        Date(1988, 7, 4), # Independence Day
        Date(1988, 9, 5), # Labor Day
        Date(1988, 10, 10), # Columbus Day
        Date(1988, 11, 11), # Veterans Day
        Date(1988, 11, 24), # Thanksgiving Day
        Date(1988, 12, 25), # Christmas Day
        Date(1988, 12, 26), # Christmas Day (observed)
        Date(1989, 1, 1), # New Year's Day
        Date(1989, 1, 2), # New Year's Day (observed)
        Date(1989, 1, 16), # Martin Luther King Jr. Day
        Date(1989, 2, 20), # Washington's Birthday
        Date(1989, 5, 29), # Memorial Day
        Date(1989, 7, 4), # Independence Day
        Date(1989, 9, 4), # Labor Day
        Date(1989, 10, 9), # Columbus Day
        Date(1989, 11, 10), # Veterans Day (observed)
        Date(1989, 11, 11), # Veterans Day
        Date(1989, 11, 23), # Thanksgiving Day
        Date(1989, 12, 25), # Christmas Day
        Date(1990, 1, 1), # New Year's Day
        Date(1990, 1, 15), # Martin Luther King Jr. Day
        Date(1990, 2, 19), # Washington's Birthday
        Date(1990, 5, 28), # Memorial Day
        Date(1990, 7, 4), # Independence Day
        Date(1990, 9, 3), # Labor Day
        Date(1990, 10, 8), # Columbus Day
        Date(1990, 11, 11), # Veterans Day
        Date(1990, 11, 12), # Veterans Day (observed)
        Date(1990, 11, 22), # Thanksgiving Day
        Date(1990, 12, 25), # Christmas Day
        Date(1991, 1, 1), # New Year's Day
        Date(1991, 1, 21), # Martin Luther King Jr. Day
        Date(1991, 2, 18), # Washington's Birthday
        Date(1991, 5, 27), # Memorial Day
        Date(1991, 7, 4), # Independence Day
        Date(1991, 9, 2), # Labor Day
        Date(1991, 10, 14), # Columbus Day
        Date(1991, 11, 11), # Veterans Day
        Date(1991, 11, 28), # Thanksgiving Day
        Date(1991, 12, 25), # Christmas Day
        Date(1992, 1, 1), # New Year's Day
        Date(1992, 1, 20), # Martin Luther King Jr. Day
        Date(1992, 2, 17), # Washington's Birthday
        Date(1992, 5, 25), # Memorial Day
        Date(1992, 7, 3), # Independence Day (observed)
        Date(1992, 7, 4), # Independence Day
        Date(1992, 9, 7), # Labor Day
        Date(1992, 10, 12), # Columbus Day
        Date(1992, 11, 11), # Veterans Day
        Date(1992, 11, 26), # Thanksgiving Day
        Date(1992, 12, 25), # Christmas Day
        Date(1993, 1, 1), # New Year's Day
        Date(1993, 1, 18), # Martin Luther King Jr. Day
        Date(1993, 2, 15), # Washington's Birthday
        Date(1993, 5, 31), # Memorial Day
        Date(1993, 7, 4), # Independence Day
        Date(1993, 7, 5), # Independence Day (observed)
        Date(1993, 9, 6), # Labor Day
        Date(1993, 10, 11), # Columbus Day
        Date(1993, 11, 11), # Veterans Day
        Date(1993, 11, 25), # Thanksgiving Day
        Date(1993, 12, 24), # Christmas Day (observed)
        Date(1993, 12, 25), # Christmas Day
        Date(1993, 12, 31), # New Year's Day (observed)
        Date(1994, 1, 1), # New Year's Day
        Date(1994, 1, 17), # Martin Luther King Jr. Day
        Date(1994, 2, 21), # Washington's Birthday
        Date(1994, 5, 30), # Memorial Day
        Date(1994, 7, 4), # Independence Day
        Date(1994, 9, 5), # Labor Day
        Date(1994, 10, 10), # Columbus Day
        Date(1994, 11, 11), # Veterans Day
        Date(1994, 11, 24), # Thanksgiving Day
        Date(1994, 12, 25), # Christmas Day
        Date(1994, 12, 26), # Christmas Day (observed)
        Date(1995, 1, 1), # New Year's Day
        Date(1995, 1, 2), # New Year's Day (observed)
        Date(1995, 1, 16), # Martin Luther King Jr. Day
        Date(1995, 2, 20), # Washington's Birthday
        Date(1995, 5, 29), # Memorial Day
        Date(1995, 7, 4), # Independence Day
        Date(1995, 9, 4), # Labor Day
        Date(1995, 10, 9), # Columbus Day
        Date(1995, 11, 10), # Veterans Day (observed)
        Date(1995, 11, 11), # Veterans Day
        Date(1995, 11, 23), # Thanksgiving Day
        Date(1995, 12, 25), # Christmas Day
        Date(1996, 1, 1), # New Year's Day
        Date(1996, 1, 15), # Martin Luther King Jr. Day
        Date(1996, 2, 19), # Washington's Birthday
        Date(1996, 5, 27), # Memorial Day
        Date(1996, 7, 4), # Independence Day
        Date(1996, 9, 2), # Labor Day
        Date(1996, 10, 14), # Columbus Day
        Date(1996, 11, 11), # Veterans Day
        Date(1996, 11, 28), # Thanksgiving Day
        Date(1996, 12, 25), # Christmas Day
        Date(1997, 1, 1), # New Year's Day
        Date(1997, 1, 20), # Martin Luther King Jr. Day
        Date(1997, 2, 17), # Washington's Birthday
        Date(1997, 5, 26), # Memorial Day
        Date(1997, 7, 4), # Independence Day
        Date(1997, 9, 1), # Labor Day
        Date(1997, 10, 13), # Columbus Day
        Date(1997, 11, 11), # Veterans Day
        Date(1997, 11, 27), # Thanksgiving Day
        Date(1997, 12, 25), # Christmas Day
        Date(1998, 1, 1), # New Year's Day
        Date(1998, 1, 19), # Martin Luther King Jr. Day
        Date(1998, 2, 16), # Washington's Birthday
        Date(1998, 5, 25), # Memorial Day
        Date(1998, 7, 3), # Independence Day (observed)
        Date(1998, 7, 4), # Independence Day
        Date(1998, 9, 7), # Labor Day
        Date(1998, 10, 12), # Columbus Day
        Date(1998, 11, 11), # Veterans Day
        Date(1998, 11, 26), # Thanksgiving Day
        Date(1998, 12, 25), # Christmas Day
        Date(1999, 1, 1), # New Year's Day
        Date(1999, 1, 18), # Martin Luther King Jr. Day
        Date(1999, 2, 15), # Washington's Birthday
        Date(1999, 5, 31), # Memorial Day
        Date(1999, 7, 4), # Independence Day
        Date(1999, 7, 5), # Independence Day (observed)
        Date(1999, 9, 6), # Labor Day
        Date(1999, 10, 11), # Columbus Day
        Date(1999, 11, 11), # Veterans Day
        Date(1999, 11, 25), # Thanksgiving Day
        Date(1999, 12, 24), # Christmas Day (observed)
        Date(1999, 12, 25), # Christmas Day
        Date(1999, 12, 31), # New Year's Day (observed)
        Date(2000, 1, 1), # New Year's Day
        Date(2000, 1, 17), # Martin Luther King Jr. Day
        Date(2000, 2, 21), # Washington's Birthday
        Date(2000, 5, 29), # Memorial Day
        Date(2000, 7, 4), # Independence Day
        Date(2000, 9, 4), # Labor Day
        Date(2000, 10, 9), # Columbus Day
        Date(2000, 11, 10), # Veterans Day (observed)
        Date(2000, 11, 11), # Veterans Day
        Date(2000, 11, 23), # Thanksgiving Day
        Date(2000, 12, 25), # Christmas Day
        Date(2001, 1, 1), # New Year's Day
        Date(2001, 1, 15), # Martin Luther King Jr. Day
        Date(2001, 2, 19), # Washington's Birthday
        Date(2001, 5, 28), # Memorial Day
        Date(2001, 7, 4), # Independence Day
        Date(2001, 9, 3), # Labor Day
        Date(2001, 10, 8), # Columbus Day
        Date(2001, 11, 11), # Veterans Day
        Date(2001, 11, 12), # Veterans Day (observed)
        Date(2001, 11, 22), # Thanksgiving Day
        Date(2001, 12, 25), # Christmas Day
        Date(2002, 1, 1), # New Year's Day
        Date(2002, 1, 21), # Martin Luther King Jr. Day
        Date(2002, 2, 18), # Washington's Birthday
        Date(2002, 5, 27), # Memorial Day
        Date(2002, 7, 4), # Independence Day
        Date(2002, 9, 2), # Labor Day
        Date(2002, 10, 14), # Columbus Day
        Date(2002, 11, 11), # Veterans Day
        Date(2002, 11, 28), # Thanksgiving Day
        Date(2002, 12, 25), # Christmas Day
        Date(2003, 1, 1), # New Year's Day
        Date(2003, 1, 20), # Martin Luther King Jr. Day
        Date(2003, 2, 17), # Washington's Birthday
        Date(2003, 5, 26), # Memorial Day
        Date(2003, 7, 4), # Independence Day
        Date(2003, 9, 1), # Labor Day
        Date(2003, 10, 13), # Columbus Day
        Date(2003, 11, 11), # Veterans Day
        Date(2003, 11, 27), # Thanksgiving Day
        Date(2003, 12, 25), # Christmas Day
        Date(2004, 1, 1), # New Year's Day
        Date(2004, 1, 19), # Martin Luther King Jr. Day
        Date(2004, 2, 16), # Washington's Birthday
        Date(2004, 5, 31), # Memorial Day
        Date(2004, 7, 4), # Independence Day
        Date(2004, 7, 5), # Independence Day (observed)
        Date(2004, 9, 6), # Labor Day
        Date(2004, 10, 11), # Columbus Day
        Date(2004, 11, 11), # Veterans Day
        Date(2004, 11, 25), # Thanksgiving Day
        Date(2004, 12, 24), # Christmas Day (observed)
        Date(2004, 12, 25), # Christmas Day
        Date(2004, 12, 31), # New Year's Day (observed)
        Date(2005, 1, 1), # New Year's Day
        Date(2005, 1, 17), # Martin Luther King Jr. Day
        Date(2005, 2, 21), # Washington's Birthday
        Date(2005, 5, 30), # Memorial Day
        Date(2005, 7, 4), # Independence Day
        Date(2005, 9, 5), # Labor Day
        Date(2005, 10, 10), # Columbus Day
        Date(2005, 11, 11), # Veterans Day
        Date(2005, 11, 24), # Thanksgiving Day
        Date(2005, 12, 25), # Christmas Day
        Date(2005, 12, 26), # Christmas Day (observed)
        Date(2006, 1, 1), # New Year's Day
        Date(2006, 1, 2), # New Year's Day (observed)
        Date(2006, 1, 16), # Martin Luther King Jr. Day
        Date(2006, 2, 20), # Washington's Birthday
        Date(2006, 5, 29), # Memorial Day
        Date(2006, 7, 4), # Independence Day
        Date(2006, 9, 4), # Labor Day
        Date(2006, 10, 9), # Columbus Day
        Date(2006, 11, 10), # Veterans Day (observed)
        Date(2006, 11, 11), # Veterans Day
        Date(2006, 11, 23), # Thanksgiving Day
        Date(2006, 12, 25), # Christmas Day
        Date(2007, 1, 1), # New Year's Day
        Date(2007, 1, 15), # Martin Luther King Jr. Day
        Date(2007, 2, 19), # Washington's Birthday
        Date(2007, 5, 28), # Memorial Day
        Date(2007, 7, 4), # Independence Day
        Date(2007, 9, 3), # Labor Day
        Date(2007, 10, 8), # Columbus Day
        Date(2007, 11, 11), # Veterans Day
        Date(2007, 11, 12), # Veterans Day (observed)
        Date(2007, 11, 22), # Thanksgiving Day
        Date(2007, 12, 25), # Christmas Day
        Date(2008, 1, 1), # New Year's Day
        Date(2008, 1, 21), # Martin Luther King Jr. Day
        Date(2008, 2, 18), # Washington's Birthday
        Date(2008, 5, 26), # Memorial Day
        Date(2008, 7, 4), # Independence Day
        Date(2008, 9, 1), # Labor Day
        Date(2008, 10, 13), # Columbus Day
        Date(2008, 11, 11), # Veterans Day
        Date(2008, 11, 27), # Thanksgiving Day
        Date(2008, 12, 25), # Christmas Day
        Date(2009, 1, 1), # New Year's Day
        Date(2009, 1, 19), # Martin Luther King Jr. Day
        Date(2009, 2, 16), # Washington's Birthday
        Date(2009, 5, 25), # Memorial Day
        Date(2009, 7, 3), # Independence Day (observed)
        Date(2009, 7, 4), # Independence Day
        Date(2009, 9, 7), # Labor Day
        Date(2009, 10, 12), # Columbus Day
        Date(2009, 11, 11), # Veterans Day
        Date(2009, 11, 26), # Thanksgiving Day
        Date(2009, 12, 25), # Christmas Day
        Date(2010, 1, 1), # New Year's Day
        Date(2010, 1, 18), # Martin Luther King Jr. Day
        Date(2010, 2, 15), # Washington's Birthday
        Date(2010, 5, 31), # Memorial Day
        Date(2010, 7, 4), # Independence Day
        Date(2010, 7, 5), # Independence Day (observed)
        Date(2010, 9, 6), # Labor Day
        Date(2010, 10, 11), # Columbus Day
        Date(2010, 11, 11), # Veterans Day
        Date(2010, 11, 25), # Thanksgiving Day
        Date(2010, 12, 24), # Christmas Day (observed)
        Date(2010, 12, 25), # Christmas Day
        Date(2010, 12, 31), # New Year's Day (observed)
    ]

    test_holidays(calendar, holidays)

    @testset "Alabama" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Alabama())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Alaska" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Alaska())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Arizona" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Arizona())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Arkansas" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Arkansas())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "California" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.California())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Colorado" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Colorado())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Connecticut" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Connecticut())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Delaware" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Delaware())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Florida" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Florida())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Georgia" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Georgia())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Hawaii" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Hawaii())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Idaho" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Idaho())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Illinois" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Illinois())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Indiana" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Indiana())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Iowa" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Iowa())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Kansas" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Kansas())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Kentucky" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Kentucky())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Louisiana" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Louisiana())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Maine" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Maine())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Maryland" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Maryland())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Massachusetts" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Massachusetts())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Michigan" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Michigan())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Minnesota" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Minnesota())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Mississippi" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Mississippi())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Missouri" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Missouri())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Montana" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Montana())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Nebraska" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Nebraska())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Nevada" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Nevada())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "NewHampshire" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.NewHampshire())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "NewJersey" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.NewJersey())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "NewMexico" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.NewMexico())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "NewYork" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.NewYork())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "NorthCarolina" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.NorthCarolina())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "NorthDakota" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.NorthDakota())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Ohio" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Ohio())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Oklahoma" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Oklahoma())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Oregon" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Oregon())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Pennsylvania" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Pennsylvania())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "RhodeIsland" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.RhodeIsland())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "SouthCarolina" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.SouthCarolina())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "SouthDakota" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.SouthDakota())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Tennessee" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Tennessee())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Texas" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Texas())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Utah" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Utah())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Vermont" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Vermont())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Virginia" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Virginia())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Washington" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Washington())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "WestVirginia" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.WestVirginia())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Wisconsin" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Wisconsin())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Wyoming" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Wyoming())
        test_holidays(calendar, holidays, Date[])
    end

    return nothing
end

end

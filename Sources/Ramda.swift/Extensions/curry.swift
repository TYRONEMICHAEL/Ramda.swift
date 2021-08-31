import Foundation

extension R {

    public class func curry<A, B, C>(_ function: @escaping (A, B) -> C) -> (A) -> (B) -> C {
        return { first in
            return { second in
                return function(first, second)
            }
        }
    }

    public class func curry<A, B, C>(_ function: @escaping (A, B) throws -> C) -> (A) -> (B) throws -> C {
        return { first in
            return { second in
                return try function(first, second)
            }
        }
    }

    public class func curry<A, B, C, D>(_ function: @escaping (A, B, C) -> D) -> (A) -> (B) -> (C) -> D {
        return { first in
            return { second in
                return { third in
                    return function(first, second, third)
                }
            }
        }
    }

    public class func curry<A, B, C, D>(_ function: @escaping (A, B, C) throws -> D) -> (A) -> (B) -> (C) throws -> D {
        return { first in
            return { second in
                return { third in
                    return try function(first, second, third)
                }
            }
        }
    }

    public class func curry<A, B, C, D, E>(_ function: @escaping (A, B, C, D) -> E) -> (A) -> (B) -> (C) -> (D) -> E {
        return { first in
            return { second in
                return { third in
                    return { fourth in
                        return function(first, second, third, fourth)
                    }
                }
            }
        }
    }

    public class func curry<A, B, C, D, E>(_ function: @escaping (A, B, C, D) throws -> E) -> (A) -> (B) -> (C) -> (D) throws -> E {
        return { first in
            return { second in
                return { third in
                    return { fourth in
                        return try function(first, second, third, fourth)
                    }
                }
            }
        }
    }

    public class func curry<A, B, C, D, E, F>(_ function: @escaping (A, B, C, D, E) -> F) -> (A) -> (B) -> (C) -> (D) -> (E) -> F {
        return { first in
            return { second in
                return { third in
                    return { fourth in
                        return { fifth in
                            return function(first, second, third, fourth, fifth)
                        }
                    }
                }
            }
        }
    }

    public class func curry<A, B, C, D, E, F>(_ function: @escaping (A, B, C, D, E) throws -> F) -> (A) -> (B) -> (C) -> (D) -> (E) throws -> F {
        return { first in
            return { second in
                return { third in
                    return { fourth in
                        return { fifth in
                            return try function(first, second, third, fourth, fifth)
                        }
                    }
                }
            }
        }
    }

}

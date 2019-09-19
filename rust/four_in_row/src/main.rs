extern crate csv;

fn main() { }

fn match_result<T>(_board: T) -> &'static str {
    "To be implemented"
}



#[cfg(test)]
mod tests {
    // Note this useful idiom: importing names from outer (for mod tests) scope.
    use super::*;

    #[test]
    fn test_match_result_blue_wins() {
        let expected_result = "blue";
        let board = read_csv();

        assert_eq!(match_result(board), expected_result);
    }

    fn read_csv() -> Vec<csv::StringRecord> {
        let mut rdr = csv::Reader::from_path("board.csv").unwrap();
        let mut res = Vec::new();
        for result in rdr.records() {
            res.push(result.unwrap());
        }
        res
    }
}

module Overcommit::Hook::PrePush
  # Validate HTML output
  class HtmlProofer < Base
    def run
      result = execute(command + applicable_files)

      # Status code 81 indicates the applicable files were all filtered by
      # exclusions defined by the configuration. In this case, we're happy to
      # return success since there were technically no lints.
      return :pass if [0, 81].include?(result.status)

      # Any status of errors indicates failure
      return :fail, result.stderr if [1, 2].include?(result.status)
    end
  end
end

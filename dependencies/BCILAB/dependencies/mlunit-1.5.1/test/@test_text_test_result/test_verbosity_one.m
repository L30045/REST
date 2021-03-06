function self = test_verbosity_one(self)
%test_text_test_result/test_verbosity_one tests the behaviour of
%text_test_result for verbosity = 1.
%
%  Example
%  =======
%         run(gui_test_runner, 'test_text_test_result(''test_verbosity_one'');');
%
%  See also TEXT_TEST_RESULT.

%  �Author: Thomas Dohmke <thomas@dohmke.de> �
%  $Id: test_verbosity_one.m 157 2007-01-03 20:11:10Z thomi $

result = text_test_result(self.tmp_file, 1);
result = set_result(self, result);
fseek(self.tmp_file, 0, -1);

line = fgetl(self.tmp_file);
assert(strcmp('.EF', line));
assert(strcmp('text_test_result run=3 errors=1 failures=1', summary(result)));

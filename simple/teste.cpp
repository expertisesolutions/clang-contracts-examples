
#include <utility>

struct A;

[[property]] int old_size(A);

struct A {
  void clear() __attribute__(( pos(this->empty()) ));
  int size() const;
  bool empty() const /* __attribute__(( pos( (this->size() == 0 && this->empty())
                        || (this->size() != 0 && !this->empty())) ))*/;
  void push() __attribute__ (( pos( ! this->empty()) ));
  void pop()
  //__attribute__ (( pre_constants( old_size(*this) == this->size()) ))
    __attribute__ (( pre( ! this->empty()) ))
  //__attribute__ (( pos( this->size() == old_size(*this) + 1) ))
    ;
};

int main()
{
  A a;
  a.clear();
  a.push();
  a.pop();
}

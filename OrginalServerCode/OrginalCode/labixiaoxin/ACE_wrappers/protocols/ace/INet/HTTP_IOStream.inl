// -*- C++ -*-
//
// $Id: HTTP_IOStream.inl 90450 2010-06-08 07:25:58Z mcorino $

ACE_BEGIN_VERSIONED_NAMESPACE_DECL

namespace ACE
{
  namespace HTTP
  {

    ACE_INLINE
    StreamBuffer* IOS::rdbuf ()
      {
        return &this->streambuf_;
      }

    ACE_INLINE
    void OStream::set_interceptor (StreamBuffer::interceptor_type& interceptor)
      {
        this->rdbuf ()->set_interceptor (interceptor);
      }

    ACE_INLINE
    void IStream::set_interceptor (StreamBuffer::interceptor_type& interceptor)
      {
        this->rdbuf ()->set_interceptor (interceptor);
      }

  }
}

ACE_END_VERSIONED_NAMESPACE_DECL
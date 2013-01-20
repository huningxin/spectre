part of graphics_context_test;

/*

  Copyright (C) 2012 John McCutchan <john@johnmccutchan.com>

  This software is provided 'as-is', without any express or implied
  warranty.  In no event will the authors be held liable for any damages
  arising from the use of this software.

  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgment in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.

*/

class MockGraphicsDevice extends Mock implements GraphicsDevice {
  WebGLRenderingContext gl;
  MockGraphicsDevice(WebGLRenderingContext this.gl);
}

class MockWebGLRenderingContext extends Mock implements WebGLRenderingContext {
  MockWebGLRenderingContext() {
    when(callsTo('enable')).alwaysReturn(null);
    when(callsTo('disable')).alwaysReturn(null);

    // BlendState calls
    when(callsTo('blendFuncSeparate')).alwaysReturn(null);
    when(callsTo('blendEquationSeparate')).alwaysReturn(null);
    when(callsTo('colorMask')).alwaysReturn(null);
    when(callsTo('blendColor')).alwaysReturn(null);

    // RasterizerState calls
    when(callsTo('cullFace')).alwaysReturn(null);
    when(callsTo('frontFace')).alwaysReturn(null);
    when(callsTo('polygonOffset')).alwaysReturn(null);
  }
}
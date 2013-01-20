.class public Lcom/android/gallery3d/photoeditor/RendererUtils;
.super Ljava/lang/Object;
.source "RendererUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;
    }
.end annotation


# static fields
.field private static final POS_VERTICES:[F

.field private static final TEX_VERTICES:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 42
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/gallery3d/photoeditor/RendererUtils;->TEX_VERTICES:[F

    .line 46
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/gallery3d/photoeditor/RendererUtils;->POS_VERTICES:[F

    return-void

    .line 42
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 46
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private static checkGlError(Ljava/lang/String;)V
    .locals 4
    .parameter "op"

    .prologue
    .line 352
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, error:I
    if-eqz v0, :cond_0

    .line 353
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 355
    :cond_0
    return-void
.end method

.method public static clearTexture(I)V
    .locals 3
    .parameter "texture"

    .prologue
    const/4 v2, 0x0

    .line 119
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 120
    .local v0, textures:[I
    aput p0, v0, v2

    .line 121
    array-length v1, v0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 122
    const-string v1, "glDeleteTextures"

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public static createProgram()Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 284
    const v6, 0x8b31

    const-string v7, "attribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = a_position;\n  v_texcoord = a_texcoord;\n}\n"

    invoke-static {v6, v7}, Lcom/android/gallery3d/photoeditor/RendererUtils;->loadShader(ILjava/lang/String;)I

    move-result v5

    .line 285
    .local v5, vertexShader:I
    if-nez v5, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-object v0

    .line 288
    :cond_1
    const v6, 0x8b30

    const-string v7, "precision mediump float;\nuniform sampler2D tex_sampler;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler, v_texcoord);\n}\n"

    invoke-static {v6, v7}, Lcom/android/gallery3d/photoeditor/RendererUtils;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 289
    .local v3, pixelShader:I
    if-eqz v3, :cond_0

    .line 293
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v4

    .line 294
    .local v4, program:I
    if-eqz v4, :cond_2

    .line 295
    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 296
    const-string v6, "glAttachShader"

    invoke-static {v6}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 297
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 298
    const-string v6, "glAttachShader"

    invoke-static {v6}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 299
    invoke-static {v4}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 300
    new-array v2, v9, [I

    .line 301
    .local v2, linkStatus:[I
    const v6, 0x8b82

    invoke-static {v4, v6, v2, v8}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 302
    aget v6, v2, v8

    if-eq v6, v9, :cond_2

    .line 303
    invoke-static {v4}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, info:Ljava/lang/String;
    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 305
    const/4 v4, 0x0

    .line 306
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not link program: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 311
    .end local v1           #info:Ljava/lang/String;
    .end local v2           #linkStatus:[I
    :cond_2
    new-instance v0, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;-><init>()V

    .line 312
    .local v0, context:Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;
    const-string v6, "tex_sampler"

    invoke-static {v4, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    #setter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->texSamplerHandle:I
    invoke-static {v0, v6}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$502(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;I)I

    .line 313
    const-string v6, "a_texcoord"

    invoke-static {v4, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v6

    #setter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->texCoordHandle:I
    invoke-static {v0, v6}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$202(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;I)I

    .line 314
    const-string v6, "a_position"

    invoke-static {v4, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v6

    #setter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->posCoordHandle:I
    invoke-static {v0, v6}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$402(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;I)I

    .line 315
    sget-object v6, Lcom/android/gallery3d/photoeditor/RendererUtils;->TEX_VERTICES:[F

    invoke-static {v6}, Lcom/android/gallery3d/photoeditor/RendererUtils;->createVerticesBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    #setter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->texVertices:Ljava/nio/FloatBuffer;
    invoke-static {v0, v6}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$302(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 316
    sget-object v6, Lcom/android/gallery3d/photoeditor/RendererUtils;->POS_VERTICES:[F

    invoke-static {v6}, Lcom/android/gallery3d/photoeditor/RendererUtils;->createVerticesBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    #setter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->posVertices:Ljava/nio/FloatBuffer;
    invoke-static {v0, v6}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$002(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 318
    #setter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->shaderProgram:I
    invoke-static {v0, v4}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$102(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;I)I

    goto/16 :goto_0
.end method

.method public static createTexture()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 72
    .local v0, textures:[I
    array-length v1, v0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 73
    const-string v1, "glGenTextures"

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 74
    aget v1, v0, v2

    return v1
.end method

.method public static createTexture(Landroid/graphics/Bitmap;)I
    .locals 5
    .parameter "bitmap"

    .prologue
    const v4, 0x812f

    const/16 v3, 0x2601

    const/4 v1, 0x0

    const/16 v2, 0xde1

    .line 78
    invoke-static {}, Lcom/android/gallery3d/photoeditor/RendererUtils;->createTexture()I

    move-result v0

    .line 80
    .local v0, texture:I
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 81
    invoke-static {v2, v1, p0, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 82
    const/16 v1, 0x2800

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 84
    const/16 v1, 0x2801

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 86
    const/16 v1, 0x2802

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 88
    const/16 v1, 0x2803

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 90
    const-string v1, "texImage2D"

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 92
    return v0
.end method

.method private static createVerticesBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3
    .parameter "vertices"

    .prologue
    .line 340
    array-length v1, p0

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 341
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Number of vertices should be four."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_0
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 346
    .local v0, buffer:Ljava/nio/FloatBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 347
    return-object v0
.end method

.method private static getFitVertices(IIII)[F
    .locals 7
    .parameter "srcWidth"
    .parameter "srcHeight"
    .parameter "dstWidth"
    .parameter "dstHeight"

    .prologue
    const/4 v6, 0x0

    .line 127
    int-to-float v4, p0

    int-to-float v5, p1

    div-float v2, v4, v5

    .line 128
    .local v2, srcAspectRatio:F
    int-to-float v4, p2

    int-to-float v5, p3

    div-float v0, v4, v5

    .line 129
    .local v0, dstAspectRatio:F
    div-float v1, v0, v2

    .line 131
    .local v1, relativeAspectRatio:F
    const/16 v4, 0x8

    new-array v3, v4, [F

    .line 132
    .local v3, vertices:[F
    sget-object v4, Lcom/android/gallery3d/photoeditor/RendererUtils;->POS_VERTICES:[F

    array-length v5, v3

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    const/high16 v4, 0x3f80

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    .line 135
    aget v4, v3, v6

    div-float/2addr v4, v1

    aput v4, v3, v6

    .line 136
    const/4 v4, 0x2

    aget v5, v3, v4

    div-float/2addr v5, v1

    aput v5, v3, v4

    .line 137
    const/4 v4, 0x4

    aget v5, v3, v4

    div-float/2addr v5, v1

    aput v5, v3, v4

    .line 138
    const/4 v4, 0x6

    aget v5, v3, v4

    div-float/2addr v5, v1

    aput v5, v3, v4

    .line 145
    :goto_0
    return-object v3

    .line 140
    :cond_0
    const/4 v4, 0x1

    aget v5, v3, v4

    mul-float/2addr v5, v1

    aput v5, v3, v4

    .line 141
    const/4 v4, 0x3

    aget v5, v3, v4

    mul-float/2addr v5, v1

    aput v5, v3, v4

    .line 142
    const/4 v4, 0x5

    aget v5, v3, v4

    mul-float/2addr v5, v1

    aput v5, v3, v4

    .line 143
    const/4 v4, 0x7

    aget v5, v3, v4

    mul-float/2addr v5, v1

    aput v5, v3, v4

    goto :goto_0
.end method

.method private static loadShader(ILjava/lang/String;)I
    .locals 6
    .parameter "shaderType"
    .parameter "source"

    .prologue
    const/4 v4, 0x0

    .line 323
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v2

    .line 324
    .local v2, shader:I
    if-eqz v2, :cond_0

    .line 325
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 326
    invoke-static {v2}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 327
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 328
    .local v0, compiled:[I
    const v3, 0x8b81

    invoke-static {v2, v3, v0, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 329
    aget v3, v0, v4

    if-nez v3, :cond_0

    .line 330
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, info:Ljava/lang/String;
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 332
    const/4 v2, 0x0

    .line 333
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not compile shader "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 336
    .end local v0           #compiled:[I
    .end local v1           #info:Ljava/lang/String;
    :cond_0
    return v2
.end method

.method public static renderBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 246
    const/high16 v0, 0x3f80

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 247
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 248
    return-void
.end method

.method public static renderTexture(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;III)V
    .locals 6
    .parameter "context"
    .parameter "texture"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/16 v2, 0x1406

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 253
    #getter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->shaderProgram:I
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$100(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 254
    const-string v0, "glUseProgram"

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 257
    invoke-static {v3, v3, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 258
    const-string v0, "glViewport"

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 261
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 264
    #getter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->texCoordHandle:I
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$200(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;)I

    move-result v0

    #getter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->texVertices:Ljava/nio/FloatBuffer;
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$300(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;)Ljava/nio/FloatBuffer;

    move-result-object v5

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 266
    #getter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->texCoordHandle:I
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$200(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 267
    #getter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->posCoordHandle:I
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$400(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;)I

    move-result v0

    #getter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->posVertices:Ljava/nio/FloatBuffer;
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$000(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;)Ljava/nio/FloatBuffer;

    move-result-object v5

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 269
    #getter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->posCoordHandle:I
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$400(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 270
    const-string v0, "vertex attribute setup"

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 273
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 274
    const-string v0, "glActiveTexture"

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 275
    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 276
    const-string v0, "glBindTexture"

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 277
    #getter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->texSamplerHandle:I
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$500(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;)I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 280
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 281
    return-void
.end method

.method public static saveTexture(III)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "texture"
    .parameter "width"
    .parameter "height"

    .prologue
    const v10, 0x8d40

    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 96
    new-array v8, v9, [I

    .line 97
    .local v8, frame:[I
    invoke-static {v9, v8, v0}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 98
    const-string v1, "glGenFramebuffers"

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 99
    aget v1, v8, v0

    invoke-static {v10, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 100
    const-string v1, "glBindFramebuffer"

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 101
    const v1, 0x8ce0

    const/16 v2, 0xde1

    invoke-static {v10, v1, v2, p0, v0}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 103
    const-string v1, "glFramebufferTexture2D"

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 105
    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 106
    .local v6, buffer:Ljava/nio/ByteBuffer;
    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v1, v0

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 107
    const-string v1, "glReadPixels"

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 108
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 109
    .local v7, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v7, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 111
    invoke-static {v10, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 112
    const-string v1, "glBindFramebuffer"

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 113
    invoke-static {v9, v8, v0}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 114
    const-string v0, "glDeleteFramebuffer"

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 115
    return-object v7
.end method

.method public static setRenderToFit(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;IIII)V
    .locals 1
    .parameter "context"
    .parameter "srcWidth"
    .parameter "srcHeight"
    .parameter "dstWidth"
    .parameter "dstHeight"

    .prologue
    .line 150
    invoke-static {p1, p2, p3, p4}, Lcom/android/gallery3d/photoeditor/RendererUtils;->getFitVertices(IIII)[F

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/RendererUtils;->createVerticesBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    #setter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->posVertices:Ljava/nio/FloatBuffer;
    invoke-static {p0, v0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$002(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 152
    return-void
.end method

.method public static setRenderToFlip(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;IIIIFF)V
    .locals 13
    .parameter "context"
    .parameter "srcWidth"
    .parameter "srcHeight"
    .parameter "dstWidth"
    .parameter "dstHeight"
    .parameter "horizontalDegrees"
    .parameter "verticalDegrees"

    .prologue
    .line 188
    invoke-static/range {p1 .. p4}, Lcom/android/gallery3d/photoeditor/RendererUtils;->getFitVertices(IIII)[F

    move-result-object v1

    .line 189
    .local v1, base:[F
    move/from16 v0, p5

    float-to-int v10, v0

    div-int/lit16 v3, v10, 0xb4

    .line 190
    .local v3, horizontalRounds:I
    rem-int/lit8 v10, v3, 0x2

    if-eqz v10, :cond_0

    .line 191
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, v1, v11

    neg-float v11, v11

    aput v11, v1, v10

    .line 192
    const/4 v10, 0x4

    const/4 v11, 0x0

    aget v11, v1, v11

    aput v11, v1, v10

    .line 193
    const/4 v10, 0x2

    const/4 v11, 0x2

    aget v11, v1, v11

    neg-float v11, v11

    aput v11, v1, v10

    .line 194
    const/4 v10, 0x6

    const/4 v11, 0x2

    aget v11, v1, v11

    aput v11, v1, v10

    .line 196
    :cond_0
    move/from16 v0, p6

    float-to-int v10, v0

    div-int/lit16 v8, v10, 0xb4

    .line 197
    .local v8, verticalRounds:I
    rem-int/lit8 v10, v8, 0x2

    if-eqz v10, :cond_1

    .line 198
    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, v1, v11

    neg-float v11, v11

    aput v11, v1, v10

    .line 199
    const/4 v10, 0x3

    const/4 v11, 0x1

    aget v11, v1, v11

    aput v11, v1, v10

    .line 200
    const/4 v10, 0x5

    const/4 v11, 0x5

    aget v11, v1, v11

    neg-float v11, v11

    aput v11, v1, v10

    .line 201
    const/4 v10, 0x7

    const/4 v11, 0x5

    aget v11, v1, v11

    aput v11, v1, v10

    .line 204
    :cond_1
    const/high16 v4, 0x40a0

    .line 205
    .local v4, length:F
    const/16 v10, 0x8

    new-array v9, v10, [F

    .line 206
    .local v9, vertices:[F
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v9

    invoke-static {v1, v10, v9, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    const/high16 v10, 0x4334

    rem-float v10, p5, v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_2

    .line 208
    mul-int/lit16 v10, v3, 0xb4

    int-to-float v10, v10

    sub-float v10, p5, v10

    const v11, 0x3c8efa35

    mul-float v5, v10, v11

    .line 209
    .local v5, radian:F
    invoke-static {v5}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    .line 210
    .local v2, cosTheta:F
    invoke-static {v5}, Landroid/util/FloatMath;->sin(F)F

    move-result v7

    .line 212
    .local v7, sinTheta:F
    const/4 v10, 0x0

    aget v10, v1, v10

    mul-float/2addr v10, v7

    add-float/2addr v10, v4

    div-float v6, v4, v10

    .line 213
    .local v6, scale:F
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, v1, v11

    mul-float/2addr v11, v2

    mul-float/2addr v11, v6

    aput v11, v9, v10

    .line 214
    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, v1, v11

    mul-float/2addr v11, v6

    aput v11, v9, v10

    .line 215
    const/4 v10, 0x4

    const/4 v11, 0x0

    aget v11, v9, v11

    aput v11, v9, v10

    .line 216
    const/4 v10, 0x5

    const/4 v11, 0x5

    aget v11, v1, v11

    mul-float/2addr v11, v6

    aput v11, v9, v10

    .line 218
    const/4 v10, 0x2

    aget v10, v1, v10

    mul-float/2addr v10, v7

    add-float/2addr v10, v4

    div-float v6, v4, v10

    .line 219
    const/4 v10, 0x2

    const/4 v11, 0x2

    aget v11, v1, v11

    mul-float/2addr v11, v2

    mul-float/2addr v11, v6

    aput v11, v9, v10

    .line 220
    const/4 v10, 0x3

    const/4 v11, 0x3

    aget v11, v1, v11

    mul-float/2addr v11, v6

    aput v11, v9, v10

    .line 221
    const/4 v10, 0x6

    const/4 v11, 0x2

    aget v11, v9, v11

    aput v11, v9, v10

    .line 222
    const/4 v10, 0x7

    const/4 v11, 0x7

    aget v11, v1, v11

    mul-float/2addr v11, v6

    aput v11, v9, v10

    .line 225
    .end local v2           #cosTheta:F
    .end local v5           #radian:F
    .end local v6           #scale:F
    .end local v7           #sinTheta:F
    :cond_2
    const/high16 v10, 0x4334

    rem-float v10, p6, v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_3

    .line 226
    mul-int/lit16 v10, v8, 0xb4

    int-to-float v10, v10

    sub-float v10, p6, v10

    const v11, 0x3c8efa35

    mul-float v5, v10, v11

    .line 227
    .restart local v5       #radian:F
    invoke-static {v5}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    .line 228
    .restart local v2       #cosTheta:F
    invoke-static {v5}, Landroid/util/FloatMath;->sin(F)F

    move-result v7

    .line 230
    .restart local v7       #sinTheta:F
    const/4 v10, 0x1

    aget v10, v1, v10

    mul-float/2addr v10, v7

    add-float/2addr v10, v4

    div-float v6, v4, v10

    .line 231
    .restart local v6       #scale:F
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, v1, v11

    mul-float/2addr v11, v6

    aput v11, v9, v10

    .line 232
    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, v1, v11

    mul-float/2addr v11, v2

    mul-float/2addr v11, v6

    aput v11, v9, v10

    .line 233
    const/4 v10, 0x2

    const/4 v11, 0x2

    aget v11, v1, v11

    mul-float/2addr v11, v6

    aput v11, v9, v10

    .line 234
    const/4 v10, 0x3

    const/4 v11, 0x1

    aget v11, v9, v11

    aput v11, v9, v10

    .line 236
    const/4 v10, 0x5

    aget v10, v1, v10

    mul-float/2addr v10, v7

    add-float/2addr v10, v4

    div-float v6, v4, v10

    .line 237
    const/4 v10, 0x4

    const/4 v11, 0x4

    aget v11, v1, v11

    mul-float/2addr v11, v6

    aput v11, v9, v10

    .line 238
    const/4 v10, 0x5

    const/4 v11, 0x5

    aget v11, v1, v11

    mul-float/2addr v11, v2

    mul-float/2addr v11, v6

    aput v11, v9, v10

    .line 239
    const/4 v10, 0x6

    const/4 v11, 0x6

    aget v11, v1, v11

    mul-float/2addr v11, v6

    aput v11, v9, v10

    .line 240
    const/4 v10, 0x7

    const/4 v11, 0x5

    aget v11, v9, v11

    aput v11, v9, v10

    .line 242
    .end local v2           #cosTheta:F
    .end local v5           #radian:F
    .end local v6           #scale:F
    .end local v7           #sinTheta:F
    :cond_3
    invoke-static {v9}, Lcom/android/gallery3d/photoeditor/RendererUtils;->createVerticesBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v10

    #setter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->posVertices:Ljava/nio/FloatBuffer;
    invoke-static {p0, v10}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$002(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 243
    return-void
.end method

.method public static setRenderToRotate(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;IIIIF)V
    .locals 16
    .parameter "context"
    .parameter "srcWidth"
    .parameter "srcHeight"
    .parameter "dstWidth"
    .parameter "dstHeight"
    .parameter "degrees"

    .prologue
    .line 156
    move/from16 v0, p5

    neg-float v13, v0

    const v14, 0x3c8efa35

    mul-float v7, v13, v14

    .line 157
    .local v7, radian:F
    invoke-static {v7}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    .line 158
    .local v2, cosTheta:F
    invoke-static {v7}, Landroid/util/FloatMath;->sin(F)F

    move-result v10

    .line 159
    .local v10, sinTheta:F
    move/from16 v0, p1

    int-to-float v13, v0

    mul-float v3, v2, v13

    .line 160
    .local v3, cosWidth:F
    move/from16 v0, p1

    int-to-float v13, v0

    mul-float v11, v10, v13

    .line 161
    .local v11, sinWidth:F
    move/from16 v0, p2

    int-to-float v13, v0

    mul-float v1, v2, v13

    .line 162
    .local v1, cosHeight:F
    move/from16 v0, p2

    int-to-float v13, v0

    mul-float v9, v10, v13

    .line 164
    .local v9, sinHeight:F
    const/16 v13, 0x8

    new-array v12, v13, [F

    .line 165
    .local v12, vertices:[F
    const/4 v13, 0x0

    neg-float v14, v3

    add-float/2addr v14, v9

    aput v14, v12, v13

    .line 166
    const/4 v13, 0x1

    neg-float v14, v11

    sub-float/2addr v14, v1

    aput v14, v12, v13

    .line 167
    const/4 v13, 0x2

    add-float v14, v3, v9

    aput v14, v12, v13

    .line 168
    const/4 v13, 0x3

    sub-float v14, v11, v1

    aput v14, v12, v13

    .line 169
    const/4 v13, 0x4

    const/4 v14, 0x2

    aget v14, v12, v14

    neg-float v14, v14

    aput v14, v12, v13

    .line 170
    const/4 v13, 0x5

    const/4 v14, 0x3

    aget v14, v12, v14

    neg-float v14, v14

    aput v14, v12, v13

    .line 171
    const/4 v13, 0x6

    const/4 v14, 0x0

    aget v14, v12, v14

    neg-float v14, v14

    aput v14, v12, v13

    .line 172
    const/4 v13, 0x7

    const/4 v14, 0x1

    aget v14, v12, v14

    neg-float v14, v14

    aput v14, v12, v13

    .line 174
    const/4 v13, 0x0

    aget v13, v12, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/4 v14, 0x2

    aget v14, v12, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 175
    .local v6, maxWidth:F
    const/4 v13, 0x1

    aget v13, v12, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/4 v14, 0x3

    aget v14, v12, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 176
    .local v5, maxHeight:F
    move/from16 v0, p3

    int-to-float v13, v0

    div-float/2addr v13, v6

    move/from16 v0, p4

    int-to-float v14, v0

    div-float/2addr v14, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 178
    .local v8, scale:F
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    const/16 v13, 0x8

    if-ge v4, v13, :cond_0

    .line 179
    aget v13, v12, v4

    move/from16 v0, p3

    int-to-float v14, v0

    div-float v14, v8, v14

    mul-float/2addr v13, v14

    aput v13, v12, v4

    .line 180
    add-int/lit8 v13, v4, 0x1

    aget v14, v12, v13

    move/from16 v0, p4

    int-to-float v15, v0

    div-float v15, v8, v15

    mul-float/2addr v14, v15

    aput v14, v12, v13

    .line 178
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 182
    :cond_0
    invoke-static {v12}, Lcom/android/gallery3d/photoeditor/RendererUtils;->createVerticesBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v13

    move-object/from16 v0, p0

    #setter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->posVertices:Ljava/nio/FloatBuffer;
    invoke-static {v0, v13}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$002(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 183
    return-void
.end method

.class final Lcom/prometheus/camera/m3/M3Thumbnail;
.super Ljava/lang/Object;
.source "M3Thumbnail.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([B)[B
    .registers 1

    .line 14
    invoke-static {p0}, Lcom/prometheus/camera/m3/M3Thumbnail;->render([B)[B

    move-result-object p0

    return-object p0
.end method

.method static install(Ljava/lang/ClassLoader;)V
    .registers 4

    .line 16
    const-string v0, "Rh.r"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/prometheus/camera/m3/M3Thumbnail$1;

    invoke-direct {v1}, Lcom/prometheus/camera/m3/M3Thumbnail$1;-><init>()V

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "s7.g"

    const-string v2, "a"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 34
    const-string p0, "OS4 M3 early JPEG renderer installed"

    invoke-static {p0}, Lcom/prometheus/camera/m3/M3Runtime;->log(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private static render([B)[B
    .registers 7

    .line 38
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_6d

    .line 40
    nop

    .line 42
    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 44
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 45
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    new-instance v4, Landroid/graphics/ColorMatrix;

    const/16 v5, 0x14

    new-array v5, v5, [F

    fill-array-data v5, :array_76

    invoke-direct {v4, v5}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 51
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 52
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v3, p0

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 53
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5f

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 55
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {p0, v2}, Lcom/prometheus/camera/m3/M3Jpeg;->previewImage([B[B)[B

    move-result-object p0
    :try_end_52
    .catchall {:try_start_a .. :try_end_52} :catchall_63

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 58
    if-eqz v1, :cond_5a

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 55
    :cond_5a
    return-object p0

    .line 54
    :cond_5b
    :try_start_5b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot encode M3 early JPEG"

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_63
    .catchall {:try_start_5b .. :try_end_63} :catchall_63

    .line 57
    :catchall_63
    move-exception p0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 58
    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 59
    :cond_6c
    throw p0

    .line 39
    :cond_6d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot decode OS4 early JPEG"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_76
    .array-data 4
        0x3e991687    # 0.299f
        0x3f1645a2    # 0.587f
        0x3de978d5    # 0.114f
        0x0
        0x0
        0x3e991687    # 0.299f
        0x3f1645a2    # 0.587f
        0x3de978d5    # 0.114f
        0x0
        0x0
        0x3e991687    # 0.299f
        0x3f1645a2    # 0.587f
        0x3de978d5    # 0.114f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.class public final Lcom/prometheus/camera/m3/M3Runtime;
.super Ljava/lang/Object;
.source "M3Runtime.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;
.implements Lde/robv/android/xposed/IXposedHookZygoteInit;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prometheus/camera/m3/M3Runtime$Exposure;,
        Lcom/prometheus/camera/m3/M3Runtime$Preview;
    }
.end annotation


# static fields
.field private static final AEC:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final MODULE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private static final PREVIEW:Ljava/lang/String; = "phoenix.m3.preview"

.field private static final TAG:Ljava/lang/String; = "PhoenixM3"

.field private static candyClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile currentModule:I

.field private static volatile exposure:Lcom/prometheus/camera/m3/M3Runtime$Exposure;

.field private static glClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static modulePath:Ljava/lang/String;

.field private static parameters:Lcom/prometheus/camera/m3/M3Parameters;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 28
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "xiaomi.app.module"

    const-class v2, [I

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/prometheus/camera/m3/M3Runtime;->MODULE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 30
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "org.quic.camera2.statsconfigs.AECFrameControl"

    const-class v2, [B

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/prometheus/camera/m3/M3Runtime;->AEC:Landroid/hardware/camera2/CaptureResult$Key;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/hardware/camera2/CaptureRequest$Key;
    .registers 1

    .line 20
    sget-object v0, Lcom/prometheus/camera/m3/M3Runtime;->MODULE:Landroid/hardware/camera2/CaptureRequest$Key;

    return-object v0
.end method

.method static synthetic access$100()I
    .registers 1

    .line 20
    sget v0, Lcom/prometheus/camera/m3/M3Runtime;->currentModule:I

    return v0
.end method

.method static synthetic access$102(I)I
    .registers 1

    .line 20
    sput p0, Lcom/prometheus/camera/m3/M3Runtime;->currentModule:I

    return p0
.end method

.method static synthetic access$200()Lcom/prometheus/camera/m3/M3Runtime$Exposure;
    .registers 1

    .line 20
    sget-object v0, Lcom/prometheus/camera/m3/M3Runtime;->exposure:Lcom/prometheus/camera/m3/M3Runtime$Exposure;

    return-object v0
.end method

.method static synthetic access$202(Lcom/prometheus/camera/m3/M3Runtime$Exposure;)Lcom/prometheus/camera/m3/M3Runtime$Exposure;
    .registers 1

    .line 20
    sput-object p0, Lcom/prometheus/camera/m3/M3Runtime;->exposure:Lcom/prometheus/camera/m3/M3Runtime$Exposure;

    return-object p0
.end method

.method static synthetic access$300()Landroid/hardware/camera2/CaptureResult$Key;
    .registers 1

    .line 20
    sget-object v0, Lcom/prometheus/camera/m3/M3Runtime;->AEC:Landroid/hardware/camera2/CaptureResult$Key;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Class;
    .registers 1

    .line 20
    sget-object v0, Lcom/prometheus/camera/m3/M3Runtime;->candyClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$600()Lcom/prometheus/camera/m3/M3Parameters;
    .registers 1

    .line 20
    sget-object v0, Lcom/prometheus/camera/m3/M3Runtime;->parameters:Lcom/prometheus/camera/m3/M3Parameters;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/Class;
    .registers 1

    .line 20
    sget-object v0, Lcom/prometheus/camera/m3/M3Runtime;->glClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic lambda$handleLoadPackage$0()Z
    .registers 2

    .line 48
    sget v0, Lcom/prometheus/camera/m3/M3Runtime;->currentModule:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static log(Ljava/lang/String;)V
    .registers 3

    .line 112
    const-string v0, "PhoenixM3"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoenixM3: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 114
    return-void
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    const-string v1, "com.android.camera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_e0

    .line 38
    :cond_14
    # Primrose uses different preview renderer classes from the donor build.
    # Install only the final JPEG bridge: it marks finished M3 captures for
    # MediaEditor's deferred Leica Essential workflow, then exits safely.
    iget-object p1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p1}, Lcom/prometheus/camera/m3/M3SaveBridge;->install(Ljava/lang/ClassLoader;)V

    # Primrose's actual OES preview renderer is the dynamically supplied Au.a
    # implementation used by the donor M3 hook.  Keep capture/save isolated.
    new-instance v0, Lcom/prometheus/camera/m3/M3Runtime$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/prometheus/camera/m3/M3Runtime$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Lcom/prometheus/camera/m3/M3PreviewShader;->install(Ljava/lang/ClassLoader;Ljava/util/function/BooleanSupplier;)V

    const-class v0, Landroid/hardware/camera2/CaptureRequest$Builder;

    new-instance v1, Lcom/prometheus/camera/m3/M3Runtime$1;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/m3/M3Runtime$1;-><init>(Lcom/prometheus/camera/m3/M3Runtime;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "build"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    const-string p1, "Primrose Essential save bridge installed"

    invoke-static {p1}, Lcom/prometheus/camera/m3/M3Runtime;->log(Ljava/lang/String;)V

    return-void

    new-instance v0, Ljava/util/zip/ZipFile;

    sget-object v1, Lcom/prometheus/camera/m3/M3Runtime;->modulePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 39
    :try_start_1b
    const-string v1, "assets/phoenix_m3/leica_filter_param_m3.bin"

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_d6

    .line 40
    :try_start_25
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_ca

    .line 41
    const/16 v3, 0x2000

    :try_start_2c
    new-array v3, v3, [B

    .line 42
    :goto_2e
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3a

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2e

    .line 43
    :cond_3a
    new-instance v3, Lcom/prometheus/camera/m3/M3Parameters;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/prometheus/camera/m3/M3Parameters;-><init>([B)V

    sput-object v3, Lcom/prometheus/camera/m3/M3Runtime;->parameters:Lcom/prometheus/camera/m3/M3Parameters;
    :try_end_45
    .catchall {:try_start_2c .. :try_end_45} :catchall_c0

    .line 44
    :try_start_45
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_ca

    if-eqz v1, :cond_4d

    :try_start_4a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_d6

    :cond_4d
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 45
    iget-object p1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    .line 46
    const-string v0, "com.xiaomi.milab.filtersdk.CandySDK"

    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/m3/M3Runtime;->candyClass:Ljava/lang/Class;

    .line 47
    const-string v0, "com.xiaomi.gl.MIGL"

    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/m3/M3Runtime;->glClass:Ljava/lang/Class;

    .line 48
    new-instance v0, Lcom/prometheus/camera/m3/M3Runtime$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/prometheus/camera/m3/M3Runtime$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Lcom/prometheus/camera/m3/M3PreviewShader;->install(Ljava/lang/ClassLoader;Ljava/util/function/BooleanSupplier;)V

    .line 49
    invoke-static {p1}, Lcom/prometheus/camera/m3/M3SaveBridge;->install(Ljava/lang/ClassLoader;)V

    .line 50
    invoke-static {p1}, Lcom/prometheus/camera/m3/M3Thumbnail;->install(Ljava/lang/ClassLoader;)V

    .line 51
    const-class v0, Landroid/hardware/camera2/CaptureRequest$Builder;

    new-instance v1, Lcom/prometheus/camera/m3/M3Runtime$1;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/m3/M3Runtime$1;-><init>(Lcom/prometheus/camera/m3/M3Runtime;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "build"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 64
    const-class v0, Landroid/hardware/camera2/TotalCaptureResult;

    new-instance v1, Lcom/prometheus/camera/m3/M3Runtime$2;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/m3/M3Runtime$2;-><init>(Lcom/prometheus/camera/m3/M3Runtime;)V

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedBridge;->hookAllConstructors(Ljava/lang/Class;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 82
    new-instance v0, Lcom/prometheus/camera/m3/M3Runtime$3;

    invoke-direct {v0, p0}, Lcom/prometheus/camera/m3/M3Runtime$3;-><init>(Lcom/prometheus/camera/m3/M3Runtime;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ru.h"

    const-string v2, "k"

    invoke-static {v1, p1, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 87
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/prometheus/camera/m3/M3Runtime$4;

    invoke-direct {v2, p0}, Lcom/prometheus/camera/m3/M3Runtime$4;-><init>(Lcom/prometheus/camera/m3/M3Runtime;)V

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "e"

    invoke-static {v1, p1, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 101
    new-instance v0, Lcom/prometheus/camera/m3/M3Runtime$5;

    invoke-direct {v0, p0}, Lcom/prometheus/camera/m3/M3Runtime$5;-><init>(Lcom/prometheus/camera/m3/M3Runtime;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Cu.w"

    const-string v2, "d"

    invoke-static {v1, p1, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 108
    const-string p1, "runtime hooks installed: request, AEC, OES/2D, preview, release"

    invoke-static {p1}, Lcom/prometheus/camera/m3/M3Runtime;->log(Ljava/lang/String;)V

    .line 109
    return-void

    .line 38
    :catchall_c0
    move-exception p1

    :try_start_c1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_c5

    goto :goto_c9

    :catchall_c5
    move-exception v2

    :try_start_c6
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c9
    throw p1
    :try_end_ca
    .catchall {:try_start_c6 .. :try_end_ca} :catchall_ca

    :catchall_ca
    move-exception p1

    if-eqz v1, :cond_d5

    :try_start_cd
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d0
    .catchall {:try_start_cd .. :try_end_d0} :catchall_d1

    goto :goto_d5

    :catchall_d1
    move-exception v1

    :try_start_d2
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d5
    :goto_d5
    throw p1
    :try_end_d6
    .catchall {:try_start_d2 .. :try_end_d6} :catchall_d6

    :catchall_d6
    move-exception p1

    :try_start_d7
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_da
    .catchall {:try_start_d7 .. :try_end_da} :catchall_db

    goto :goto_df

    :catchall_db
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_df
    throw p1

    .line 37
    :cond_e0
    :goto_e0
    return-void
.end method

.method public initZygote(Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;)V
    .registers 2

    .line 33
    iget-object p1, p1, Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;->modulePath:Ljava/lang/String;

    sput-object p1, Lcom/prometheus/camera/m3/M3Runtime;->modulePath:Ljava/lang/String;

    return-void
.end method

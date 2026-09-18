.class final Lcom/prometheus/camera/m3/M3PreviewShader;
.super Ljava/lang/Object;
.source "M3PreviewShader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prometheus/camera/m3/M3PreviewShader$Uniform;
    }
.end annotation


# static fields
.field private static final DECLARATION:Ljava/lang/String; = "uniform float uMixAlpha; uniform samplerExternalOES sTexture;"

.field private static final OUTPUT:Ljava/lang/String; = "outColor = color*uAlpha;"

.field private static final STATE:Ljava/lang/String; = "phoenix.m3.gray"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static inject(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 17
    const-string v0, "uniform float uMixAlpha; uniform samplerExternalOES sTexture;"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_31

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_31

    .line 19
    const-string v1, "outColor = color*uAlpha;"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_31

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_31

    .line 21
    const-string v2, "uniform float uMixAlpha; uniform float uM3Gray; uniform samplerExternalOES sTexture;"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 23
    const-string v0, "float _m3y = dot(color.rgb, vec3(0.299, 0.587, 0.114)); color.rgb = mix(color.rgb, vec3(_m3y), uM3Gray); outColor = color*uAlpha;"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 21
    return-object p0

    .line 20
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "M3 OES shader source does not match OS4 renderer"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static install(Ljava/lang/ClassLoader;Ljava/util/function/BooleanSupplier;)V
    .registers 5

    .line 29
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/prometheus/camera/m3/M3PreviewShader$1;

    invoke-direct {v1}, Lcom/prometheus/camera/m3/M3PreviewShader$1;-><init>()V

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.xiaomi.gl.ShaderManager"

    const-string v2, "getShaderByType"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 37
    const-string v0, "Au.a"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 38
    new-instance v0, Lcom/prometheus/camera/m3/M3PreviewShader$2;

    invoke-direct {v0, p1}, Lcom/prometheus/camera/m3/M3PreviewShader$2;-><init>(Ljava/util/function/BooleanSupplier;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "c"

    invoke-static {p0, v1, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 49
    new-instance v0, Lcom/prometheus/camera/m3/M3PreviewShader$3;

    invoke-direct {v0, p1}, Lcom/prometheus/camera/m3/M3PreviewShader$3;-><init>(Ljava/util/function/BooleanSupplier;)V

    const-string p1, "a"

    invoke-static {p0, p1, v0}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 57
    return-void
.end method

.class Lcom/prometheus/camera/m3/M3PreviewShader$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "M3PreviewShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/m3/M3PreviewShader;->install(Ljava/lang/ClassLoader;Ljava/util/function/BooleanSupplier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$enabled:Ljava/util/function/BooleanSupplier;


# direct methods
.method constructor <init>(Ljava/util/function/BooleanSupplier;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/prometheus/camera/m3/M3PreviewShader$2;->val$enabled:Ljava/util/function/BooleanSupplier;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 5

    .line 40
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v1, "b"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    const v1, 0x8d65

    if-eq v0, v1, :cond_14

    goto :goto_42

    .line 41
    :cond_14
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v1, "c"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 42
    const-string v1, "uM3Gray"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 43
    if-ltz v1, :cond_3a

    .line 44
    new-instance v2, Lcom/prometheus/camera/m3/M3PreviewShader$Uniform;

    invoke-direct {v2, v0, v1}, Lcom/prometheus/camera/m3/M3PreviewShader$Uniform;-><init>(II)V

    .line 45
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v0, "phoenix.m3.gray"

    invoke-static {p1, v0, v2}, Lde/robv/android/xposed/XposedHelpers;->setAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object p1, p0, Lcom/prometheus/camera/m3/M3PreviewShader$2;->val$enabled:Ljava/util/function/BooleanSupplier;

    invoke-interface {p1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/prometheus/camera/m3/M3PreviewShader$Uniform;->apply(Z)V

    .line 47
    return-void

    .line 43
    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "M3 grayscale uniform missing"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_42
    :goto_42
    return-void
.end method

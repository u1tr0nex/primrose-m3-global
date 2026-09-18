.class Lcom/prometheus/camera/m3/M3PreviewShader$3;
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

    .line 49
    iput-object p1, p0, Lcom/prometheus/camera/m3/M3PreviewShader$3;->val$enabled:Ljava/util/function/BooleanSupplier;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 4

    .line 51
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v1, "b"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    const v1, 0x8d65

    if-eq v0, v1, :cond_e

    return-void

    .line 52
    :cond_e
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v0, "phoenix.m3.gray"

    invoke-static {p1, v0}, Lde/robv/android/xposed/XposedHelpers;->getAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prometheus/camera/m3/M3PreviewShader$Uniform;

    .line 54
    iget v0, p1, Lcom/prometheus/camera/m3/M3PreviewShader$Uniform;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glIsProgram(I)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/prometheus/camera/m3/M3PreviewShader$3;->val$enabled:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/prometheus/camera/m3/M3PreviewShader$Uniform;->apply(Z)V

    .line 55
    :cond_29
    return-void
.end method

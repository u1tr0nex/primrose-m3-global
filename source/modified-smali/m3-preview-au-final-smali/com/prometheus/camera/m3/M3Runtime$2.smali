.class Lcom/prometheus/camera/m3/M3Runtime$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "M3Runtime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/m3/M3Runtime;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/m3/M3Runtime;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/m3/M3Runtime;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/prometheus/camera/m3/M3Runtime$2;->this$0:Lcom/prometheus/camera/m3/M3Runtime;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 6

    .line 66
    # getter for: Lcom/prometheus/camera/m3/M3Runtime;->currentModule:I
    invoke-static {}, Lcom/prometheus/camera/m3/M3Runtime;->access$100()I

    move-result v0

    const/16 v1, 0x100

    if-eq v0, v1, :cond_9

    return-void

    .line 67
    :cond_9
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/camera2/TotalCaptureResult;

    .line 68
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    # getter for: Lcom/prometheus/camera/m3/M3Runtime;->MODULE:Landroid/hardware/camera2/CaptureRequest$Key;
    invoke-static {}, Lcom/prometheus/camera/m3/M3Runtime;->access$000()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 69
    if-eqz v0, :cond_b5

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b5

    const/4 v2, 0x0

    aget v0, v0, v2

    if-eq v0, v1, :cond_28

    goto/16 :goto_b5

    .line 70
    :cond_28
    # getter for: Lcom/prometheus/camera/m3/M3Runtime;->AEC:Landroid/hardware/camera2/CaptureResult$Key;
    invoke-static {}, Lcom/prometheus/camera/m3/M3Runtime;->access$300()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 71
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 72
    if-eqz v0, :cond_b4

    array-length v1, v0

    const/16 v2, 0x64

    if-lt v1, v2, :cond_b4

    if-nez p1, :cond_44

    goto :goto_b4

    .line 73
    :cond_44
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v0

    .line 74
    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v1

    if-eqz v1, :cond_ac

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-ltz v2, :cond_ac

    const v2, 0x477fff00    # 65535.0f

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_ac

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isFinite(F)Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpg-float v1, v2, v1

    if-lez v1, :cond_ac

    .line 76
    # getter for: Lcom/prometheus/camera/m3/M3Runtime;->exposure:Lcom/prometheus/camera/m3/M3Runtime$Exposure;
    invoke-static {}, Lcom/prometheus/camera/m3/M3Runtime;->access$200()Lcom/prometheus/camera/m3/M3Runtime$Exposure;

    move-result-object v1

    if-nez v1, :cond_9e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preview metadata lux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " zoom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prometheus/camera/m3/M3Runtime;->log(Ljava/lang/String;)V

    .line 77
    :cond_9e
    new-instance v1, Lcom/prometheus/camera/m3/M3Runtime$Exposure;

    float-to-int v0, v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {v1, v0, p1}, Lcom/prometheus/camera/m3/M3Runtime$Exposure;-><init>(IF)V

    # setter for: Lcom/prometheus/camera/m3/M3Runtime;->exposure:Lcom/prometheus/camera/m3/M3Runtime$Exposure;
    invoke-static {v1}, Lcom/prometheus/camera/m3/M3Runtime;->access$202(Lcom/prometheus/camera/m3/M3Runtime$Exposure;)Lcom/prometheus/camera/m3/M3Runtime$Exposure;

    .line 78
    return-void

    .line 75
    :cond_ac
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid M3 exposure metadata"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_b4
    :goto_b4
    return-void

    .line 69
    :cond_b5
    :goto_b5
    return-void
.end method

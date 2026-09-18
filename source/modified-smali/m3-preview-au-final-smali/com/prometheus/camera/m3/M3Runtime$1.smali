.class Lcom/prometheus/camera/m3/M3Runtime$1;
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

    .line 51
    iput-object p1, p0, Lcom/prometheus/camera/m3/M3Runtime$1;->this$0:Lcom/prometheus/camera/m3/M3Runtime;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 5

    .line 53
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 54
    # getter for: Lcom/prometheus/camera/m3/M3Runtime;->MODULE:Landroid/hardware/camera2/CaptureRequest$Key;
    invoke-static {}, Lcom/prometheus/camera/m3/M3Runtime;->access$000()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 55
    if-eqz p1, :cond_40

    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    goto :goto_40

    .line 56
    :cond_15
    # getter for: Lcom/prometheus/camera/m3/M3Runtime;->currentModule:I
    invoke-static {}, Lcom/prometheus/camera/m3/M3Runtime;->access$100()I

    move-result v0

    .line 57
    const/4 v1, 0x0

    aget v2, p1, v1

    # setter for: Lcom/prometheus/camera/m3/M3Runtime;->currentModule:I
    invoke-static {v2}, Lcom/prometheus/camera/m3/M3Runtime;->access$102(I)I

    .line 58
    aget v2, p1, v1

    if-eq v0, v2, :cond_3f

    .line 59
    const/4 v0, 0x0

    # setter for: Lcom/prometheus/camera/m3/M3Runtime;->exposure:Lcom/prometheus/camera/m3/M3Runtime$Exposure;
    invoke-static {v0}, Lcom/prometheus/camera/m3/M3Runtime;->access$202(Lcom/prometheus/camera/m3/M3Runtime$Exposure;)Lcom/prometheus/camera/m3/M3Runtime$Exposure;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request module="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prometheus/camera/m3/M3Runtime;->log(Ljava/lang/String;)V

    .line 62
    :cond_3f
    return-void

    .line 55
    :cond_40
    :goto_40
    return-void
.end method

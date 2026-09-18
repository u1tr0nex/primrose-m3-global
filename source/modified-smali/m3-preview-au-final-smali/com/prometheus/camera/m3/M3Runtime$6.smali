.class Lcom/prometheus/camera/m3/M3Runtime$6;
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

    .line 100
    iput-object p1, p0, Lcom/prometheus/camera/m3/M3Runtime$6;->this$0:Lcom/prometheus/camera/m3/M3Runtime;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 6

    .line 102
    # getter for: Lcom/prometheus/camera/m3/M3Runtime;->exposure:Lcom/prometheus/camera/m3/M3Runtime$Exposure;
    invoke-static {}, Lcom/prometheus/camera/m3/M3Runtime;->access$200()Lcom/prometheus/camera/m3/M3Runtime$Exposure;

    move-result-object v0

    .line 103
    # getter for: Lcom/prometheus/camera/m3/M3Runtime;->currentModule:I
    invoke-static {}, Lcom/prometheus/camera/m3/M3Runtime;->access$100()I

    move-result v1

    const/16 v2, 0x100

    if-ne v1, v2, :cond_37

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_37

    .line 104
    :cond_15
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 105
    const-string v1, "Z"

    invoke-static {p1, v1}, Lde/robv/android/xposed/XposedHelpers;->getBooleanField(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    return-void

    .line 106
    :cond_20
    const-string v1, "phoenix.m3.preview"

    invoke-static {p1, v1}, Lde/robv/android/xposed/XposedHelpers;->getAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prometheus/camera/m3/M3Runtime$Preview;

    .line 107
    if-nez v2, :cond_33

    .line 108
    new-instance v2, Lcom/prometheus/camera/m3/M3Runtime$Preview;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/prometheus/camera/m3/M3Runtime$Preview;-><init>(Lcom/prometheus/camera/m3/M3Runtime$1;)V

    .line 109
    invoke-static {p1, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->setAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_33
    invoke-virtual {v2, p1, v0}, Lcom/prometheus/camera/m3/M3Runtime$Preview;->render(Ljava/lang/Object;Lcom/prometheus/camera/m3/M3Runtime$Exposure;)V

    .line 112
    return-void

    .line 103
    :cond_37
    :goto_37
    return-void
.end method

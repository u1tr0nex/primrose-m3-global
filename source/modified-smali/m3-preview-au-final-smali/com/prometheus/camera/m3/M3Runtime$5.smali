.class Lcom/prometheus/camera/m3/M3Runtime$5;
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

    .line 101
    iput-object p1, p0, Lcom/prometheus/camera/m3/M3Runtime$5;->this$0:Lcom/prometheus/camera/m3/M3Runtime;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 3

    .line 103
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v0, "c"

    invoke-static {p1, v0}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 104
    const-string v0, "phoenix.m3.preview"

    invoke-static {p1, v0}, Lde/robv/android/xposed/XposedHelpers;->removeAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prometheus/camera/m3/M3Runtime$Preview;

    .line 105
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/prometheus/camera/m3/M3Runtime$Preview;->release()V

    .line 106
    :cond_15
    return-void
.end method

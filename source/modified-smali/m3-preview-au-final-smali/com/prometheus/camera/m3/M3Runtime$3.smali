.class Lcom/prometheus/camera/m3/M3Runtime$3;
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

    .line 82
    iput-object p1, p0, Lcom/prometheus/camera/m3/M3Runtime$3;->this$0:Lcom/prometheus/camera/m3/M3Runtime;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 4

    .line 84
    # getter for: Lcom/prometheus/camera/m3/M3Runtime;->currentModule:I
    invoke-static {}, Lcom/prometheus/camera/m3/M3Runtime;->access$100()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 85
    :cond_10
    return-void
.end method

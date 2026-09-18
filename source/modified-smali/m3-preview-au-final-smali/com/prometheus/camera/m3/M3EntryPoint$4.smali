.class Lcom/prometheus/camera/m3/M3EntryPoint$4;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "M3EntryPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/m3/M3EntryPoint;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/m3/M3EntryPoint;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/m3/M3EntryPoint;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/prometheus/camera/m3/M3EntryPoint$4;->this$0:Lcom/prometheus/camera/m3/M3EntryPoint;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 3

    .line 48
    const-string v0, "M3"

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    return-void
.end method

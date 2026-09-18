.class final Lcom/prometheus/camera/m3/M3SaveBridge;
.super Ljava/lang/Object;
.source "M3SaveBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prometheus/camera/m3/M3SaveBridge$Save;
    }
.end annotation


# static fields
.field private static final SAVE:Ljava/lang/String; = "phoenix.m3.jpeg.save"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static install(Ljava/lang/ClassLoader;)V
    .registers 4

    .line 13
    const-class v0, Ljava/io/OutputStream;

    new-instance v1, Lcom/prometheus/camera/m3/M3SaveBridge$1;

    invoke-direct {v1}, Lcom/prometheus/camera/m3/M3SaveBridge$1;-><init>()V

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Nf.b"

    const-string v2, "d"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 49
    const-string p0, "OS4 M3 final JPEG writer hook installed"

    invoke-static {p0}, Lcom/prometheus/camera/m3/M3Runtime;->log(Ljava/lang/String;)V

    .line 50
    return-void
.end method

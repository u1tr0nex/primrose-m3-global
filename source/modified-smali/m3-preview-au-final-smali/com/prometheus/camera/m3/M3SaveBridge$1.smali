.class Lcom/prometheus/camera/m3/M3SaveBridge$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "M3SaveBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/m3/M3SaveBridge;->install(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 9

    .line 33
    const-string v0, "phoenix.m3.jpeg.save"

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getObjectExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prometheus/camera/m3/M3SaveBridge$Save;

    .line 34
    if-eqz v0, :cond_88

    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_88

    .line 36
    :cond_11
    :try_start_11
    iget-object v1, v0, Lcom/prometheus/camera/m3/M3SaveBridge$Save;->bytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 37
    iget-object v2, v0, Lcom/prometheus/camera/m3/M3SaveBridge$Save;->imageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/prometheus/camera/m3/M3AuxCapture;->read(Ljava/lang/String;)Lcom/prometheus/camera/m3/M3AuxCapture;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lcom/prometheus/camera/m3/M3AuxCapture;->consumed()V

    .line 39
    iget-object v3, v2, Lcom/prometheus/camera/m3/M3AuxCapture;->jpeg:[B

    iget v4, v2, Lcom/prometheus/camera/m3/M3AuxCapture;->width:I

    iget v5, v2, Lcom/prometheus/camera/m3/M3AuxCapture;->height:I

    iget v6, v2, Lcom/prometheus/camera/m3/M3AuxCapture;->orientation:I

    invoke-static {v1, v3, v4, v5, v6}, Lcom/prometheus/camera/m3/M3Jpeg;->wrap([B[BIII)[B

    move-result-object v3

    .line 40
    iget-object v4, v0, Lcom/prometheus/camera/m3/M3SaveBridge$Save;->output:Ljava/io/OutputStream;

    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "M3 JPEG committed input="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " output="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " image="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/prometheus/camera/m3/M3SaveBridge$Save;->imageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " aux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/prometheus/camera/m3/M3AuxCapture;->jpeg:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prometheus/camera/m3/M3Runtime;->log(Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_6c} :catch_6d

    .line 46
    goto :goto_87

    .line 43
    :catch_6d
    move-exception v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "M3 JPEG FAILED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prometheus/camera/m3/M3Runtime;->log(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    .line 47
    :goto_87
    return-void

    .line 34
    :cond_88
    :goto_88
    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 8

    .line 15
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v1, "a"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    const-string v2, "b"

    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 17
    const-string v4, "g"

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v3

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storage writer task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " module="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prometheus/camera/m3/M3Runtime;->log(Ljava/lang/String;)V

    .line 20
    const/16 v4, 0x100

    if-eq v3, v4, :cond_41

    return-void

    .line 21
    :cond_41
    const-string v3, "k"

    invoke-static {v0, v3}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 22
    invoke-static {v3, v2}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture storage image="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prometheus/camera/m3/M3Runtime;->log(Ljava/lang/String;)V

    .line 24
    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    const-string v1, "i"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 26
    new-instance v1, Lcom/prometheus/camera/m3/M3SaveBridge$Save;

    iget-object v3, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Ljava/io/OutputStream;

    array-length v0, v0

    invoke-direct {v1, v3, v0, v2}, Lcom/prometheus/camera/m3/M3SaveBridge$Save;-><init>(Ljava/io/OutputStream;ILjava/lang/String;)V

    .line 28
    const-string v0, "phoenix.m3.jpeg.save"

    invoke-virtual {p1, v0, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setObjectExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    iget-object v0, v1, Lcom/prometheus/camera/m3/M3SaveBridge$Save;->bytes:Ljava/io/ByteArrayOutputStream;

    aput-object v0, p1, v4

    .line 30
    return-void
.end method

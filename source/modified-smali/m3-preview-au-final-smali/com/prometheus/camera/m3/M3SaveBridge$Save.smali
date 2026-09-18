.class final Lcom/prometheus/camera/m3/M3SaveBridge$Save;
.super Ljava/lang/Object;
.source "M3SaveBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/m3/M3SaveBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Save"
.end annotation


# instance fields
.field final bytes:Ljava/io/ByteArrayOutputStream;

.field final imageName:Ljava/lang/String;

.field final output:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;ILjava/lang/String;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/prometheus/camera/m3/M3SaveBridge$Save;->output:Ljava/io/OutputStream;

    .line 58
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object p1, p0, Lcom/prometheus/camera/m3/M3SaveBridge$Save;->bytes:Ljava/io/ByteArrayOutputStream;

    .line 59
    iput-object p3, p0, Lcom/prometheus/camera/m3/M3SaveBridge$Save;->imageName:Ljava/lang/String;

    .line 60
    return-void
.end method

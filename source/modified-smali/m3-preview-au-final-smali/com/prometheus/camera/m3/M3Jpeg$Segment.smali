.class final Lcom/prometheus/camera/m3/M3Jpeg$Segment;
.super Ljava/lang/Object;
.source "M3Jpeg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/m3/M3Jpeg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Segment"
.end annotation


# instance fields
.field final length:I

.field final marker:I

.field final start:I


# direct methods
.method constructor <init>(III)V
    .registers 4

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->start:I

    iput p2, p0, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->length:I

    iput p3, p0, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->marker:I

    return-void
.end method

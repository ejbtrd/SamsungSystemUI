.class public Lcom/android/systemui/pluginlock/model/CaptureData;
.super Ljava/lang/Object;
.source "CaptureData.java"


# instance fields
.field private mCaptureType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/CaptureData;->mCaptureType:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected clone()Lcom/android/systemui/pluginlock/model/CaptureData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 21
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/CaptureData;

    return-object p0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/CaptureData;->clone()Lcom/android/systemui/pluginlock/model/CaptureData;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 26
    instance-of v0, p1, Lcom/android/systemui/pluginlock/model/CaptureData;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 27
    check-cast p1, Lcom/android/systemui/pluginlock/model/CaptureData;

    .line 28
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/CaptureData;->mCaptureType:Ljava/lang/Integer;

    if-nez p0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/CaptureData;->mCaptureType:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    iget-object p1, p1, Lcom/android/systemui/pluginlock/model/CaptureData;->mCaptureType:Ljava/lang/Integer;

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getType()Ljava/lang/Integer;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/CaptureData;->mCaptureType:Ljava/lang/Integer;

    return-object p0
.end method

.method public setCaptureType(Ljava/lang/Integer;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/CaptureData;->mCaptureType:Ljava/lang/Integer;

    return-void
.end method

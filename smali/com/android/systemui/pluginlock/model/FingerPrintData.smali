.class public Lcom/android/systemui/pluginlock/model/FingerPrintData;
.super Ljava/lang/Object;
.source "FingerPrintData.java"


# instance fields
.field private mEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enabled"
    .end annotation
.end field

.field private mFingerPrintHeight:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "height"
    .end annotation
.end field

.field private mFingerPrintImageSize:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_size"
    .end annotation
.end field

.field private mFingerPrintMarginBottom:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "margin_bottom"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected clone()Lcom/android/systemui/pluginlock/model/FingerPrintData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 50
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/FingerPrintData;

    return-object p0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/FingerPrintData;->clone()Lcom/android/systemui/pluginlock/model/FingerPrintData;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 55
    instance-of v0, p1, Lcom/android/systemui/pluginlock/model/FingerPrintData;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 56
    check-cast p1, Lcom/android/systemui/pluginlock/model/FingerPrintData;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintHeight:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintHeight:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v0, :cond_6

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintHeight:Ljava/lang/Integer;

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintImageSize:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintImageSize:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v0, :cond_6

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintImageSize:Ljava/lang/Integer;

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintMarginBottom:Ljava/lang/Integer;

    if-nez p0, :cond_4

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintMarginBottom:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    :cond_4
    if-eqz p0, :cond_6

    iget-object p1, p1, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintMarginBottom:Ljava/lang/Integer;

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public getEnabled()Ljava/lang/Boolean;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getHeight()Ljava/lang/Integer;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintHeight:Ljava/lang/Integer;

    return-object p0
.end method

.method public getImageSize()Ljava/lang/Integer;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintImageSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public getPaddingBottom()Ljava/lang/Integer;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintMarginBottom:Ljava/lang/Integer;

    return-object p0
.end method

.method public setEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintHeight:Ljava/lang/Integer;

    return-void
.end method

.method public setImageSize(Ljava/lang/Integer;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintImageSize:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingBottom(Ljava/lang/Integer;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintMarginBottom:Ljava/lang/Integer;

    return-void
.end method

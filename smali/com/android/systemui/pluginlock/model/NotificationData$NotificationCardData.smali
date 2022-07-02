.class public Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/model/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationCardData"
.end annotation


# instance fields
.field mNotiCardNumbers:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card_numbers"
    .end annotation
.end field

.field mNotiCardNumbersLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card_numbers_land"
    .end annotation
.end field

.field mPaddingStart:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "padding_start"
    .end annotation
.end field

.field mPaddingStartLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "padding_start_land"
    .end annotation
.end field

.field mTopY:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "top_y"
    .end annotation
.end field

.field mTopYLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "top_y_land"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/pluginlock/model/NotificationData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/model/NotificationData;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->this$0:Lcom/android/systemui/pluginlock/model/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mTopY:Ljava/lang/Integer;

    .line 70
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mPaddingStart:Ljava/lang/Integer;

    .line 72
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mNotiCardNumbers:Ljava/lang/Integer;

    .line 75
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mTopYLand:Ljava/lang/Integer;

    .line 77
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mPaddingStartLand:Ljava/lang/Integer;

    .line 79
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mNotiCardNumbersLand:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected clone()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 131
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    return-object p0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->clone()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    move-result-object p0

    return-object p0
.end method

.method public getNotiCardNumbers()Ljava/lang/Integer;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mNotiCardNumbers:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getNotiCardNumbersLand()Ljava/lang/Integer;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mNotiCardNumbersLand:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getPaddingStart()Ljava/lang/Integer;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mPaddingStart:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getPaddingStartLand()Ljava/lang/Integer;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mPaddingStartLand:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getTopY()Ljava/lang/Integer;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mTopY:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getTopYLand()Ljava/lang/Integer;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mTopYLand:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public setNotiCardNumbers(Ljava/lang/Integer;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mNotiCardNumbers:Ljava/lang/Integer;

    return-void
.end method

.method public setNotiCardNumbersLand(Ljava/lang/Integer;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mNotiCardNumbersLand:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingStart(Ljava/lang/Integer;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mPaddingStart:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingStartLand(Ljava/lang/Integer;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mPaddingStartLand:Ljava/lang/Integer;

    return-void
.end method

.method public setTopY(Ljava/lang/Integer;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mTopY:Ljava/lang/Integer;

    return-void
.end method

.method public setTopYLand(Ljava/lang/Integer;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mTopYLand:Ljava/lang/Integer;

    return-void
.end method

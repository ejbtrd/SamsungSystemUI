.class public Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/model/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationIconOnlyData"
.end annotation


# instance fields
.field mGravity:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gravity"
    .end annotation
.end field

.field mGravityLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gravity_land"
    .end annotation
.end field

.field mPaddingEnd:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "padding_end"
    .end annotation
.end field

.field mPaddingEndLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "padding_end_land"
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

.field mTop:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "top"
    .end annotation
.end field

.field mTopLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "top_land"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/pluginlock/model/NotificationData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/model/NotificationData;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->this$0:Lcom/android/systemui/pluginlock/model/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mGravity:Ljava/lang/Integer;

    .line 140
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mPaddingStart:Ljava/lang/Integer;

    .line 142
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mPaddingEnd:Ljava/lang/Integer;

    .line 144
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mTop:Ljava/lang/Integer;

    .line 147
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mGravityLand:Ljava/lang/Integer;

    .line 149
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mPaddingStartLand:Ljava/lang/Integer;

    .line 151
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mPaddingEndLand:Ljava/lang/Integer;

    .line 153
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mTopLand:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected clone()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 221
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    return-object p0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->clone()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object p0

    return-object p0
.end method

.method public getGravity()Ljava/lang/Integer;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mGravity:Ljava/lang/Integer;

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

.method public getGravityLand()Ljava/lang/Integer;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mGravityLand:Ljava/lang/Integer;

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

.method public getPaddingEnd()Ljava/lang/Integer;
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mPaddingEnd:Ljava/lang/Integer;

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

.method public getPaddingEndLand()Ljava/lang/Integer;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mPaddingEndLand:Ljava/lang/Integer;

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

    .line 164
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mPaddingStart:Ljava/lang/Integer;

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

    .line 196
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mPaddingStartLand:Ljava/lang/Integer;

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

    .line 180
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mTop:Ljava/lang/Integer;

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

    .line 212
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mTopLand:Ljava/lang/Integer;

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

.method public setGravity(Ljava/lang/Integer;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mGravity:Ljava/lang/Integer;

    return-void
.end method

.method public setGravityLand(Ljava/lang/Integer;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mGravityLand:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingEnd(Ljava/lang/Integer;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mPaddingEnd:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingEndLand(Ljava/lang/Integer;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mPaddingEndLand:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingStart(Ljava/lang/Integer;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mPaddingStart:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingStartLand(Ljava/lang/Integer;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mPaddingStartLand:Ljava/lang/Integer;

    return-void
.end method

.method public setTopY(Ljava/lang/Integer;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mTop:Ljava/lang/Integer;

    return-void
.end method

.method public setTopYLand(Ljava/lang/Integer;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mTopLand:Ljava/lang/Integer;

    return-void
.end method

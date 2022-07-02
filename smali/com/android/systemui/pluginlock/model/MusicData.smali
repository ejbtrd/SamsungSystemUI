.class public Lcom/android/systemui/pluginlock/model/MusicData;
.super Ljava/lang/Object;
.source "MusicData.java"


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

.field mHeight:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "height"
    .end annotation
.end field

.field mHeightLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "height_land"
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

.field mVisibility:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visibility"
    .end annotation
.end field

.field mVisibilityLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visibility_land"
    .end annotation
.end field

.field mWidth:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "width"
    .end annotation
.end field

.field mWidthLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "width_land"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mTopY:Ljava/lang/Integer;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mPaddingStart:Ljava/lang/Integer;

    .line 14
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mPaddingEnd:Ljava/lang/Integer;

    .line 16
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mHeight:Ljava/lang/Integer;

    .line 18
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mWidth:Ljava/lang/Integer;

    .line 20
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mGravity:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mVisibility:Ljava/lang/Integer;

    .line 24
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mTopYLand:Ljava/lang/Integer;

    .line 26
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mPaddingStartLand:Ljava/lang/Integer;

    .line 28
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mPaddingEndLand:Ljava/lang/Integer;

    .line 30
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mHeightLand:Ljava/lang/Integer;

    .line 32
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mWidthLand:Ljava/lang/Integer;

    .line 34
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mGravityLand:Ljava/lang/Integer;

    .line 36
    iput-object v1, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mVisibilityLand:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected clone()Lcom/android/systemui/pluginlock/model/MusicData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 152
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/MusicData;

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
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/MusicData;->clone()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p0

    return-object p0
.end method

.method public getGravity()Ljava/lang/Integer;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mGravity:Ljava/lang/Integer;

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

    .line 135
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mGravityLand:Ljava/lang/Integer;

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

.method public getHeight()Ljava/lang/Integer;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mHeight:Ljava/lang/Integer;

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

.method public getHeightLand()Ljava/lang/Integer;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mHeightLand:Ljava/lang/Integer;

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

    .line 55
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mPaddingEnd:Ljava/lang/Integer;

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

    .line 111
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mPaddingEndLand:Ljava/lang/Integer;

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

    .line 47
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mPaddingStart:Ljava/lang/Integer;

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

    .line 103
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mPaddingStartLand:Ljava/lang/Integer;

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

    .line 39
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mTopY:Ljava/lang/Integer;

    return-object p0
.end method

.method public getTopYLand()Ljava/lang/Integer;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mTopYLand:Ljava/lang/Integer;

    return-object p0
.end method

.method public getVisibility()Ljava/lang/Integer;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mVisibility:Ljava/lang/Integer;

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

.method public getVisibilityLand()Ljava/lang/Integer;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mVisibilityLand:Ljava/lang/Integer;

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

.method public getWidth()Ljava/lang/Integer;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mWidth:Ljava/lang/Integer;

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

.method public getWidthLand()Ljava/lang/Integer;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mWidthLand:Ljava/lang/Integer;

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

    .line 81
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mGravity:Ljava/lang/Integer;

    return-void
.end method

.method public setGravityLand(Ljava/lang/Integer;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mGravityLand:Ljava/lang/Integer;

    return-void
.end method

.method public setHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mHeight:Ljava/lang/Integer;

    return-void
.end method

.method public setHeightLand(Ljava/lang/Integer;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mHeightLand:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingEnd(Ljava/lang/Integer;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mPaddingEnd:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingEndLand(Ljava/lang/Integer;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mPaddingEndLand:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingStart(Ljava/lang/Integer;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mPaddingStart:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingStartLand(Ljava/lang/Integer;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mPaddingStartLand:Ljava/lang/Integer;

    return-void
.end method

.method public setTopY(Ljava/lang/Integer;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mTopY:Ljava/lang/Integer;

    return-void
.end method

.method public setTopYLand(Ljava/lang/Integer;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mTopYLand:Ljava/lang/Integer;

    return-void
.end method

.method public setVisibility(Ljava/lang/Integer;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mVisibility:Ljava/lang/Integer;

    return-void
.end method

.method public setVisibilityLand(Ljava/lang/Integer;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mVisibilityLand:Ljava/lang/Integer;

    return-void
.end method

.method public setWidth(Ljava/lang/Integer;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mWidth:Ljava/lang/Integer;

    return-void
.end method

.method public setWidthLand(Ljava/lang/Integer;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/MusicData;->mWidthLand:Ljava/lang/Integer;

    return-void
.end method

.class public Lcom/android/systemui/pluginlock/model/ShortcutData;
.super Ljava/lang/Object;
.source "ShortcutData.java"


# instance fields
.field private mImageSize:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_size"
    .end annotation
.end field

.field private mPaddingBottom:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "margin_bottom"
    .end annotation
.end field

.field private mPaddingBottomLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "margin_bottom_land"
    .end annotation
.end field

.field private mPaddingSide:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "margin_side"
    .end annotation
.end field

.field private mPaddingSideLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "margin_side_land"
    .end annotation
.end field

.field private mShortcutInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shortcutInfo"
    .end annotation
.end field

.field private mVisibility:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visibility"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mVisibility:Ljava/lang/Integer;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mPaddingBottom:Ljava/lang/Integer;

    .line 14
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mPaddingSide:Ljava/lang/Integer;

    .line 16
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mPaddingBottomLand:Ljava/lang/Integer;

    .line 18
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mPaddingSideLand:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected clone()Lcom/android/systemui/pluginlock/model/ShortcutData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 80
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/ShortcutData;

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
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ShortcutData;->clone()Lcom/android/systemui/pluginlock/model/ShortcutData;

    move-result-object p0

    return-object p0
.end method

.method public getImageSize()Ljava/lang/Integer;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mImageSize:Ljava/lang/Integer;

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

.method public getPaddingBottom()Ljava/lang/Integer;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mPaddingBottom:Ljava/lang/Integer;

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

.method public getPaddingBottomLand()Ljava/lang/Integer;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mPaddingBottomLand:Ljava/lang/Integer;

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

.method public getPaddingSide()Ljava/lang/Integer;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mPaddingSide:Ljava/lang/Integer;

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

.method public getPaddingSideLand()Ljava/lang/Integer;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mPaddingSideLand:Ljava/lang/Integer;

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

.method public getShortcutInfo()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mShortcutInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getVisibility()Ljava/lang/Integer;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mVisibility:Ljava/lang/Integer;

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

.method public setImageSize(Ljava/lang/Integer;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mImageSize:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingBottom(Ljava/lang/Integer;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mPaddingBottom:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingBottomLand(Ljava/lang/Integer;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mPaddingBottomLand:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingSide(Ljava/lang/Integer;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mPaddingSide:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingSideLand(Ljava/lang/Integer;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mPaddingSideLand:Ljava/lang/Integer;

    return-void
.end method

.method public setShortcutInfo(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mShortcutInfo:Ljava/lang/String;

    return-void
.end method

.method public setVisibility(Ljava/lang/Integer;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mVisibility:Ljava/lang/Integer;

    return-void
.end method

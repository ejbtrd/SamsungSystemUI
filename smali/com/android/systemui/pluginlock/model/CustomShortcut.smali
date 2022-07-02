.class public Lcom/android/systemui/pluginlock/model/CustomShortcut;
.super Ljava/lang/Object;
.source "CustomShortcut.java"


# instance fields
.field private mDirection:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "direction"
    .end annotation
.end field

.field private mIconSize:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon_size"
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

.field private mPosition:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "position"
    .end annotation
.end field

.field private mShortCutInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shortcut_info"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingBottom:Ljava/lang/Integer;

    .line 18
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingSide:Ljava/lang/Integer;

    .line 20
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingBottomLand:Ljava/lang/Integer;

    .line 22
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingSideLand:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getDirection()Ljava/lang/Integer;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mDirection:Ljava/lang/Integer;

    return-object p0
.end method

.method public getIconSize()Ljava/lang/Integer;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mIconSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public getPaddingBottom()Ljava/lang/Integer;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingBottom:Ljava/lang/Integer;

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

    .line 73
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingBottomLand:Ljava/lang/Integer;

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

    .line 65
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingSide:Ljava/lang/Integer;

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

    .line 81
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingSideLand:Ljava/lang/Integer;

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

.method public getPosition()Ljava/lang/Integer;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPosition:Ljava/lang/Integer;

    return-object p0
.end method

.method public getShortCutInfo()Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mShortCutInfo:Ljava/lang/String;

    return-object p0
.end method

.method public setDirection(Ljava/lang/Integer;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mDirection:Ljava/lang/Integer;

    return-void
.end method

.method public setIconSize(Ljava/lang/Integer;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mIconSize:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingBottom(Ljava/lang/Integer;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingBottom:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingBottomLand(Ljava/lang/Integer;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingBottomLand:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingSide(Ljava/lang/Integer;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingSide:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingSideLand(Ljava/lang/Integer;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingSideLand:Ljava/lang/Integer;

    return-void
.end method

.method public setPosition(Ljava/lang/Integer;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPosition:Ljava/lang/Integer;

    return-void
.end method

.method public setShortCutInfo(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mShortCutInfo:Ljava/lang/String;

    return-void
.end method

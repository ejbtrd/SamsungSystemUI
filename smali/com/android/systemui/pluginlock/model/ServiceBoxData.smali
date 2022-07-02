.class public Lcom/android/systemui/pluginlock/model/ServiceBoxData;
.super Ljava/lang/Object;
.source "ServiceBoxData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;
    }
.end annotation


# instance fields
.field private mBottomY:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bottom_y"
    .end annotation
.end field

.field private mBottomYLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bottom_y_land"
    .end annotation
.end field

.field private mClockInfo:Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock_info"
    .end annotation
.end field

.field private mExpandable:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expandable"
    .end annotation
.end field

.field private mTopY:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "top_y"
    .end annotation
.end field

.field private mTopYLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "top_y_land"
    .end annotation
.end field

.field private mVisibility:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visibility"
    .end annotation
.end field

.field private mVisibilityLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visibility_land"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mExpandable:Ljava/lang/Integer;

    const/4 v1, -0x1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mTopY:Ljava/lang/Integer;

    .line 17
    iput-object v1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mBottomY:Ljava/lang/Integer;

    .line 19
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mVisibility:Ljava/lang/Integer;

    .line 22
    iput-object v1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mTopYLand:Ljava/lang/Integer;

    .line 24
    iput-object v1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mBottomYLand:Ljava/lang/Integer;

    .line 26
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mVisibilityLand:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected clone()Lcom/android/systemui/pluginlock/model/ServiceBoxData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 97
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    return-object p0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->clone()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p0

    return-object p0
.end method

.method public getBottomY()Ljava/lang/Integer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mBottomY:Ljava/lang/Integer;

    return-object p0
.end method

.method public getBottomYLand()Ljava/lang/Integer;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mBottomYLand:Ljava/lang/Integer;

    return-object p0
.end method

.method public getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mClockInfo:Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;-><init>(Lcom/android/systemui/pluginlock/model/ServiceBoxData;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mClockInfo:Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mClockInfo:Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    return-object p0
.end method

.method public getExpandable()Ljava/lang/Integer;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mExpandable:Ljava/lang/Integer;

    return-object p0
.end method

.method public getTopY()Ljava/lang/Integer;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mTopY:Ljava/lang/Integer;

    return-object p0
.end method

.method public getTopYLand()Ljava/lang/Integer;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mTopYLand:Ljava/lang/Integer;

    return-object p0
.end method

.method public getVisibility()Ljava/lang/Integer;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mVisibility:Ljava/lang/Integer;

    return-object p0
.end method

.method public getVisibilityLand()Ljava/lang/Integer;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mVisibilityLand:Ljava/lang/Integer;

    return-object p0
.end method

.method public setBottomY(Ljava/lang/Integer;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mBottomY:Ljava/lang/Integer;

    return-void
.end method

.method public setBottomYLand(Ljava/lang/Integer;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mBottomYLand:Ljava/lang/Integer;

    return-void
.end method

.method public setClockInfo(Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mClockInfo:Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    return-void
.end method

.method public setExpandable(Ljava/lang/Integer;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mExpandable:Ljava/lang/Integer;

    return-void
.end method

.method public setTopY(Ljava/lang/Integer;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mTopY:Ljava/lang/Integer;

    return-void
.end method

.method public setTopYLand(Ljava/lang/Integer;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mTopYLand:Ljava/lang/Integer;

    return-void
.end method

.method public setVisibility(Ljava/lang/Integer;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mVisibility:Ljava/lang/Integer;

    return-void
.end method

.method public setVisibilityLand(Ljava/lang/Integer;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mVisibilityLand:Ljava/lang/Integer;

    return-void
.end method

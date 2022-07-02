.class public Lcom/android/systemui/appops/AppOpItem;
.super Ljava/lang/Object;
.source "AppOpItem.java"


# instance fields
.field private mAttributionTag:Ljava/lang/String;

.field private mCode:I

.field private mIsDisabled:Z

.field private mPackageName:Ljava/lang/String;

.field private mState:Ljava/lang/StringBuilder;

.field private mTimeStartedElapsed:J

.field private mUid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    .line 48
    iput p2, p0, Lcom/android/systemui/appops/AppOpItem;->mUid:I

    .line 49
    iput-object p3, p0, Lcom/android/systemui/appops/AppOpItem;->mPackageName:Ljava/lang/String;

    .line 50
    iput-wide p4, p0, Lcom/android/systemui/appops/AppOpItem;->mTimeStartedElapsed:J

    .line 51
    iput-object p6, p0, Lcom/android/systemui/appops/AppOpItem;->mAttributionTag:Ljava/lang/String;

    .line 52
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "AppOpItem("

    .line 53
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "Op code="

    .line 54
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "UID="

    .line 55
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "AttributionTag="

    .line 56
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Package name="

    .line 57
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Paused="

    .line 58
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/android/systemui/appops/AppOpItem;->mState:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public getAttributionTag()Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpItem;->mAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method public getCode()I
    .locals 0

    .line 62
    iget p0, p0, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpItem;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeStartedElapsed()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/android/systemui/appops/AppOpItem;->mTimeStartedElapsed:J

    return-wide v0
.end method

.method public getUid()I
    .locals 0

    .line 66
    iget p0, p0, Lcom/android/systemui/appops/AppOpItem;->mUid:I

    return p0
.end method

.method public isDisabled()Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/android/systemui/appops/AppOpItem;->mIsDisabled:Z

    return p0
.end method

.method public setDisabled(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/android/systemui/appops/AppOpItem;->mIsDisabled:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpItem;->mState:Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/appops/AppOpItem;->mIsDisabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

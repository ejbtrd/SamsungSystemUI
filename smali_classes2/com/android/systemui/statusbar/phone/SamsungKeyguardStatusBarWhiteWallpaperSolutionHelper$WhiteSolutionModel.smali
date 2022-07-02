.class Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$WhiteSolutionModel;
.super Ljava/lang/Object;
.source "SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WhiteSolutionModel"
.end annotation


# instance fields
.field public Color:I

.field public Intensity:F

.field public IsDark:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;ZIF)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$WhiteSolutionModel;->this$0:Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$WhiteSolutionModel;->IsDark:Z

    .line 122
    iput p3, p0, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$WhiteSolutionModel;->Color:I

    .line 123
    iput p4, p0, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$WhiteSolutionModel;->Intensity:F

    return-void
.end method


# virtual methods
.method public getLogString()Ljava/lang/String;
    .locals 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "needDarkFont:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$WhiteSolutionModel;->IsDark:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", fontColor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$WhiteSolutionModel;->Color:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", fontIntensity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$WhiteSolutionModel;->Intensity:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isEqual(Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$WhiteSolutionModel;)Z
    .locals 3

    .line 126
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$WhiteSolutionModel;->IsDark:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$WhiteSolutionModel;->IsDark:Z

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 127
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$WhiteSolutionModel;->Color:I

    iget v1, p1, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$WhiteSolutionModel;->Color:I

    if-eq v0, v1, :cond_1

    return v2

    .line 128
    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$WhiteSolutionModel;->Intensity:F

    iget p1, p1, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$WhiteSolutionModel;->Intensity:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

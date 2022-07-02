.class public final Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;
.super Ljava/lang/Object;
.source "SamsungLightBarControlModel.kt"


# instance fields
.field private barMode:I

.field private barState:I

.field private indexLightStack:I

.field private isWhiteKeyguardStatusBarBySettings:Z

.field private needDarkFontFromWallpaper:Z

.field private numLightStacks:I

.field private numStacks:I


# direct methods
.method public constructor <init>(IIIIZ)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->numLightStacks:I

    .line 38
    iput p2, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->numStacks:I

    .line 39
    iput p3, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->indexLightStack:I

    .line 40
    iput p4, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->barMode:I

    .line 41
    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->barState:I

    .line 42
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->needDarkFontFromWallpaper:Z

    .line 43
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardStatusBar()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->isWhiteKeyguardStatusBarBySettings:Z

    return-void
.end method


# virtual methods
.method public final getDumpString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NumLightStacks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->numLightStacks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", NumStacks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->numStacks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", IndexLightStack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->indexLightStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", StatusBarMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->barMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", StatusBarState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->barState:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", NeedDarkFontFromWallpaper:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->needDarkFontFromWallpaper:Z

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isWhiteKeyguardStatusBarBySettings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->isWhiteKeyguardStatusBarBySettings:Z

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isEqual(Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;)Z
    .locals 3
    .param p1    # Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "newModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->numLightStacks:I

    iget v1, p1, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->numLightStacks:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 54
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->numStacks:I

    iget v1, p1, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->numStacks:I

    if-eq v0, v1, :cond_1

    return v2

    .line 55
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->indexLightStack:I

    iget v1, p1, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->indexLightStack:I

    if-eq v0, v1, :cond_2

    return v2

    .line 56
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->barMode:I

    iget v1, p1, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->barMode:I

    if-eq v0, v1, :cond_3

    return v2

    .line 57
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->barState:I

    iget v1, p1, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->barState:I

    if-eq v0, v1, :cond_4

    return v2

    .line 58
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->needDarkFontFromWallpaper:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->needDarkFontFromWallpaper:Z

    if-eq v0, v1, :cond_5

    return v2

    .line 59
    :cond_5
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->isWhiteKeyguardStatusBarBySettings:Z

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->isWhiteKeyguardStatusBarBySettings:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

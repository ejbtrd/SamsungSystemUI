.class public Lcom/android/systemui/statusbar/phone/IndicatorGardenFertilizer;
.super Ljava/lang/Object;
.source "IndicatorGardenFertilizer.java"


# instance fields
.field private final BUG_DETECTOR_SWITCH:Z

.field private mJamTrigger:Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;

.field private mViewTreeLogHelper:Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenFertilizer;->BUG_DETECTOR_SWITCH:Z

    .line 17
    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenFertilizer;->mViewTreeLogHelper:Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;

    .line 21
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_TEST_JAM_TRIGGER:Z

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenFertilizer;->mJamTrigger:Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenFertilizer;->mViewTreeLogHelper:Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;->destroy()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenFertilizer;->mViewTreeLogHelper:Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;

    :cond_0
    return-void
.end method

.method public dumpGarden(Ljava/io/PrintWriter;Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;Landroid/view/DisplayCutout;)V
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenFertilizer;->mViewTreeLogHelper:Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;

    if-eqz p0, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;->printChildWidth(Ljava/io/PrintWriter;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 54
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->getDumpString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    const-string p0, " BasicRune.STATUS_LAYOUT_MARQUEE:false"

    .line 56
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mDisplayCutout ="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onConfigChanged()V
    .locals 1

    .line 38
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_TEST_JAM_TRIGGER:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenFertilizer;->mJamTrigger:Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;

    if-eqz p0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->makeSomeNoise()V

    :cond_0
    return-void
.end method

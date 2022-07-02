.class public Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;
.super Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;
.source "FaceWidgetPositionAlgorithmWrapper.java"


# instance fields
.field private mPositionAlgorithm:Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetPositionAlgorithm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomMarginY()I
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->mPositionAlgorithm:Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetPositionAlgorithm;

    if-eqz p0, :cond_0

    .line 83
    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetPositionAlgorithm;->getBottomMarginY()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMinStackScrollerPadding()F
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->mPositionAlgorithm:Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetPositionAlgorithm;

    if-eqz p0, :cond_0

    .line 67
    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetPositionAlgorithm;->getMinStackScrollerPadding()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public initPlugin(Landroid/content/res/Resources;Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetPositionAlgorithm;)V
    .locals 0

    .line 17
    iput-object p2, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->mPositionAlgorithm:Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetPositionAlgorithm;

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->loadDimens(Landroid/content/res/Resources;)V

    return-void
.end method

.method public isPanelExpanded()Z
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->mPositionAlgorithm:Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetPositionAlgorithm;

    if-eqz p0, :cond_0

    .line 75
    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetPositionAlgorithm;->isPanelExpanded()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public loadDimens(Landroid/content/res/Resources;)V
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->mPositionAlgorithm:Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetPositionAlgorithm;

    if-eqz p0, :cond_0

    .line 24
    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetPositionAlgorithm;->loadDimens()V

    :cond_0
    return-void
.end method

.method public run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->mPositionAlgorithm:Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetPositionAlgorithm;

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->mPositionAlgorithm:Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetPositionAlgorithm;

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetPositionAlgorithm;->run(Ljava/util/ArrayList;)V

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x6

    if-lt p0, v1, :cond_0

    const/4 p0, 0x0

    .line 53
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    const/4 p0, 0x1

    .line 54
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    const/4 p0, 0x2

    .line 55
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    const/4 p0, 0x3

    .line 56
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    const/4 p0, 0x4

    .line 57
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->isCenterAlignClockType:Z

    const/4 p0, 0x5

    .line 58
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    iput p0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->iconTypeTranslationY:F

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    iput-object p0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->contentsContainerPosition:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setup(IIIFIIIIZZFFZIFIZIILjava/util/function/Supplier;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIFIIIIZZFFZIFIZII",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 37
    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->mPositionAlgorithm:Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetPositionAlgorithm;

    if-eqz v0, :cond_0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    move/from16 v14, p18

    move/from16 v15, p19

    move-object/from16 v16, p20

    .line 38
    invoke-interface/range {v0 .. v16}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetPositionAlgorithm;->setup(IIIFIIIZZFFZIIILjava/util/function/Supplier;)V

    :cond_0
    return-void
.end method

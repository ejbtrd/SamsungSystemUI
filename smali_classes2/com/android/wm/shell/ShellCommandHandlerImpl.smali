.class public final Lcom/android/wm/shell/ShellCommandHandlerImpl;
.super Ljava/lang/Object;
.source "ShellCommandHandlerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;
    }
.end annotation


# instance fields
.field private final mAppPairsOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairsController;",
            ">;"
        }
    .end annotation
.end field

.field private final mHideDisplayCutout:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;",
            ">;"
        }
    .end annotation
.end field

.field private final mImpl:Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;

.field private final mLegacySplitScreenOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mOneHandedOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;"
        }
    .end annotation
.end field

.field private final mPipOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;"
        }
    .end annotation
.end field

.field private final mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private final mSplitScreenOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6k4m1oi8DeXqelUWKnN75HsO7hI(ILcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->lambda$runRemoveFromSideStage$9(ILcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8ckJ_77zRZMPOYUNA3_YlecM5Dg(Ljava/io/PrintWriter;Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->lambda$dump$3(Ljava/io/PrintWriter;Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9_0BaZ6xNMUBYDDQSVB1-d7pJTA(ILcom/android/wm/shell/apppairs/AppPairsController;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->lambda$runUnpair$7(ILcom/android/wm/shell/apppairs/AppPairsController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BUWnPT3d0cAWLgS7qzH2wWN_lEc(Ljava/io/PrintWriter;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->lambda$dump$5(Ljava/io/PrintWriter;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K6wQvy0SRl2O4NLnjEei5o7uJ0c(Ljava/io/PrintWriter;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->lambda$dump$1(Ljava/io/PrintWriter;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LVx8Jy_pW3HmwNiqyapx7bDfxSo(Ljava/io/PrintWriter;Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->lambda$dump$2(Ljava/io/PrintWriter;Lcom/android/wm/shell/onehanded/OneHandedController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QfetZnhu_ZNyfH0uwxTYkFg6qoU(ILcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->lambda$runSetSideStagePosition$10(ILcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tlw68K2LdlBhM67V_VbJSwhTVzM(Ljava/io/PrintWriter;Lcom/android/wm/shell/apppairs/AppPairsController;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->lambda$dump$4(Ljava/io/PrintWriter;Lcom/android/wm/shell/apppairs/AppPairsController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$asyjlubhUgqoEVJuUcDqkysKc3M(IILcom/android/wm/shell/apppairs/AppPairsController;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->lambda$runPair$6(IILcom/android/wm/shell/apppairs/AppPairsController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j5ofQqT1Ibi-qSMR-xHS8G-_dzc(Ljava/lang/Boolean;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->lambda$runSetSideStageVisibility$11(Ljava/lang/Boolean;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u92s9QTU-lvutaNhlAKoqG-85ZM(IILcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->lambda$runMoveToSideStage$8(IILcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w9abWcdGia7oduvzHoOSU-xwbJQ(Ljava/io/PrintWriter;Lcom/android/wm/shell/pip/Pip;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->lambda$dump$0(Ljava/io/PrintWriter;Lcom/android/wm/shell/pip/Pip;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xv3THSNFixcdw5dYw2mAafCwKqE(Ljava/io/PrintWriter;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->lambda$runToggleDividerResizeEffects$12(Ljava/io/PrintWriter;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairsController;",
            ">;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;-><init>(Lcom/android/wm/shell/ShellCommandHandlerImpl;Lcom/android/wm/shell/ShellCommandHandlerImpl$1;)V

    iput-object v0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mImpl:Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;

    .line 59
    iput-object p1, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 60
    iput-object p2, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mLegacySplitScreenOptional:Ljava/util/Optional;

    .line 61
    iput-object p3, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mSplitScreenOptional:Ljava/util/Optional;

    .line 62
    iput-object p4, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mPipOptional:Ljava/util/Optional;

    .line 63
    iput-object p5, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mOneHandedOptional:Ljava/util/Optional;

    .line 64
    iput-object p6, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mHideDisplayCutout:Ljava/util/Optional;

    .line 65
    iput-object p7, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mAppPairsOptional:Ljava/util/Optional;

    .line 66
    iput-object p8, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method

.method static synthetic access$100(Lcom/android/wm/shell/ShellCommandHandlerImpl;)Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/wm/shell/ShellCommandHandlerImpl;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->handleCommand([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/wm/shell/ShellCommandHandlerImpl;Ljava/io/PrintWriter;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 77
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 78
    iget-object v0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mPipOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda10;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 79
    iget-object v0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mLegacySplitScreenOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda7;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 80
    iget-object v0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mOneHandedOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda9;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 81
    iget-object v0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mHideDisplayCutout:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda6;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 82
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 83
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 84
    iget-object v0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mAppPairsOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda5;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 85
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 86
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 87
    iget-object p0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mSplitScreenOptional:Ljava/util/Optional;

    new-instance v0, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda11;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleCommand([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 6

    .line 93
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    .line 97
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v1, v4

    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v0, "setSideStagePosition"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "removeFromSideStage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "pair"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_3
    const-string v0, "help"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "moveToSideStage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "toggleDividerResizeEffects"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "unpair"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    move v1, v0

    goto :goto_1

    :sswitch_7
    const-string/jumbo v0, "setSideStageVisibility"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v1, v2

    :cond_8
    :goto_1
    packed-switch v1, :pswitch_data_0

    return v2

    .line 107
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->runSetSideStagePosition([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0

    .line 105
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->runRemoveFromSideStage([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0

    .line 99
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->runPair([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0

    .line 111
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->runHelp(Ljava/io/PrintWriter;)Z

    move-result p0

    return p0

    .line 103
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->runMoveToSideStage([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0

    .line 114
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->runToggleDividerResizeEffects(Ljava/io/PrintWriter;)Z

    move-result p0

    return p0

    .line 101
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->runUnpair([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0

    .line 109
    :pswitch_7
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->runSetSideStageVisibility([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x39bfe569 -> :sswitch_7
        -0x3216830d -> :sswitch_6
        -0xadcd377 -> :sswitch_5
        -0x56f90e5 -> :sswitch_4
        0x30cf41 -> :sswitch_3
        0x3462da -> :sswitch_2
        0x119de939 -> :sswitch_1
        0x5abe6dee -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$dump$0(Ljava/io/PrintWriter;Lcom/android/wm/shell/pip/Pip;)V
    .locals 0

    .line 78
    invoke-interface {p1, p0}, Lcom/android/wm/shell/pip/Pip;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private static synthetic lambda$dump$1(Ljava/io/PrintWriter;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V
    .locals 0

    .line 79
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private static synthetic lambda$dump$2(Ljava/io/PrintWriter;Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .locals 0

    .line 80
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private static synthetic lambda$dump$3(Ljava/io/PrintWriter;Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;)V
    .locals 0

    .line 81
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private static synthetic lambda$dump$4(Ljava/io/PrintWriter;Lcom/android/wm/shell/apppairs/AppPairsController;)V
    .locals 1

    const-string v0, ""

    .line 84
    invoke-virtual {p1, p0, v0}, Lcom/android/wm/shell/apppairs/AppPairsController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$dump$5(Ljava/io/PrintWriter;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 1

    const-string v0, ""

    .line 87
    invoke-virtual {p1, p0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$runMoveToSideStage$8(IILcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 0

    .line 153
    invoke-virtual {p2, p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->moveToSideStage(II)Z

    return-void
.end method

.method private static synthetic lambda$runPair$6(IILcom/android/wm/shell/apppairs/AppPairsController;)V
    .locals 0

    .line 129
    invoke-virtual {p2, p0, p1}, Lcom/android/wm/shell/apppairs/AppPairsController;->pair(II)Z

    return-void
.end method

.method private static synthetic lambda$runRemoveFromSideStage$9(ILcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 0

    .line 164
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->removeFromSideStage(I)Z

    return-void
.end method

.method private static synthetic lambda$runSetSideStagePosition$10(ILcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 0

    .line 175
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->setSideStagePosition(I)V

    return-void
.end method

.method private static synthetic lambda$runSetSideStageVisibility$11(Ljava/lang/Boolean;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 0

    .line 187
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->setSideStageVisibility(Z)V

    return-void
.end method

.method private static synthetic lambda$runToggleDividerResizeEffects$12(Ljava/io/PrintWriter;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V
    .locals 0

    .line 194
    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->runToggleDividerResizeEffects()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Success: divider resize effects is toggled now"

    .line 195
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Error: cannot toggle divider resize effects while resizing"

    .line 197
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$runUnpair$7(ILcom/android/wm/shell/apppairs/AppPairsController;)V
    .locals 0

    .line 140
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/apppairs/AppPairsController;->unpair(I)V

    return-void
.end method

.method private runHelp(Ljava/io/PrintWriter;)Z
    .locals 0

    const-string p0, "Window Manager Shell commands:"

    .line 205
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  help"

    .line 206
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      Print this help text."

    .line 207
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  <no arguments provided>"

    .line 208
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Dump Window Manager Shell internal state"

    .line 209
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  pair <taskId1> <taskId2>"

    .line 210
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  unpair <taskId>"

    .line 211
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Pairs/unpairs tasks with given ids."

    .line 212
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  moveToSideStage <taskId> <SideStagePosition>"

    .line 213
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Move a task with given id in split-screen mode."

    .line 214
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  removeFromSideStage <taskId>"

    .line 215
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Remove a task with given id in split-screen mode."

    .line 216
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  setSideStagePosition <SideStagePosition>"

    .line 217
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Sets the position of the side-stage."

    .line 218
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  setSideStageVisibility <true/false>"

    .line 219
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Show/hide side-stage."

    .line 220
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private runMoveToSideStage([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 3

    .line 145
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const-string p0, "Error: task id should be provided as arguments"

    .line 147
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 150
    :cond_0
    new-instance p2, Ljava/lang/Integer;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-direct {p2, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 151
    array-length v0, p1

    const/4 v2, 0x1

    if-le v0, v1, :cond_1

    .line 152
    new-instance v0, Ljava/lang/Integer;

    aget-object p1, p1, v1

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v2

    .line 153
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mSplitScreenOptional:Ljava/util/Optional;

    new-instance v0, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda4;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return v2
.end method

.method private runPair([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2

    .line 122
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const-string p0, "Error: two task ids should be provided as arguments"

    .line 124
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 127
    :cond_0
    new-instance p2, Ljava/lang/Integer;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-direct {p2, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 128
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x3

    aget-object p1, p1, v1

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 129
    iget-object p0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mAppPairsOptional:Ljava/util/Optional;

    new-instance v0, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 p0, 0x1

    return p0
.end method

.method private runRemoveFromSideStage([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2

    .line 158
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const-string p0, "Error: task id should be provided as arguments"

    .line 160
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 163
    :cond_0
    new-instance p2, Ljava/lang/Integer;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 164
    iget-object p0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mSplitScreenOptional:Ljava/util/Optional;

    new-instance p2, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 p0, 0x1

    return p0
.end method

.method private runSetSideStagePosition([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2

    .line 169
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const-string p0, "Error: side stage position should be provided as arguments"

    .line 171
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 174
    :cond_0
    new-instance p2, Ljava/lang/Integer;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 175
    iget-object p0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mSplitScreenOptional:Ljava/util/Optional;

    new-instance p2, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 p0, 0x1

    return p0
.end method

.method private runSetSideStageVisibility([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2

    .line 180
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const-string p0, "Error: side stage position should be provided as arguments"

    .line 182
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 185
    :cond_0
    new-instance p2, Ljava/lang/Boolean;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-direct {p2, p1}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    .line 187
    iget-object p0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mSplitScreenOptional:Ljava/util/Optional;

    new-instance p1, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda12;

    invoke-direct {p1, p2}, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 p0, 0x1

    return p0
.end method

.method private runToggleDividerResizeEffects(Ljava/io/PrintWriter;)Z
    .locals 1

    .line 193
    iget-object p0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mLegacySplitScreenOptional:Ljava/util/Optional;

    new-instance v0, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda8;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 p0, 0x1

    return p0
.end method

.method private runUnpair([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2

    .line 134
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const-string p0, "Error: task id should be provided as an argument"

    .line 136
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 139
    :cond_0
    new-instance p2, Ljava/lang/Integer;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 140
    iget-object p0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mAppPairsOptional:Ljava/util/Optional;

    new-instance p2, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public asShellCommandHandler()Lcom/android/wm/shell/ShellCommandHandler;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mImpl:Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;

    return-object p0
.end method

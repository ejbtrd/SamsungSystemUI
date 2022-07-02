.class public Lcom/android/systemui/volume/reducer/VolumePanelReducer;
.super Ljava/lang/Object;
.source "VolumePanelReducer.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumePanelReducerBase;


# static fields
.field public static VOLUME_BUDS_TOGETHER:Z

.field public static VOLUME_DUAL_AUDIO:Z

.field public static VOLUME_SMART_VIEW_STREAM:Z

.field public static VOLUME_WARNING_POPUP_SIDE_VIEW:Z

.field public static VOLUME_WARNING_POPUP_WALLET_MINI:Z


# direct methods
.method public static synthetic $r8$lambda$-Xk9WjfIq8bx6AKlvbJErXYe8aM(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$resetActiveState$2(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$0h2kERqyBj1pnshHlIRRjeN4znw(IZLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$updateTracking$12(IZLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1eZ2bVRFkqI1QIOhWslzBh66b4A(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$updateVolumeStates$29(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2wvxsrkQHBBMsSvvJxfCUmivzpE(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$isUserAttemptInGracePeriod$7(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4Ax2nCSZKtYtxBxnYXPd8Ygtj4E(ILcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$updateLevelByIconToggle$34(ILcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7TopA7LA_2ZB43lRx9de44xMO0c(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$updateAccessibilityRowPriority$25(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$7fBQ9vrT77EVfXAZ0ojw4rh3abs(Lcom/samsung/systemui/splugins/volume/VolumePanelState;ZLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$updateRowVisibility$23(Lcom/samsung/systemui/splugins/volume/VolumePanelState;ZLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8w-RXzaJNpy49fjqsUx_KzRfOXc(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/lang/Integer;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$applyImportance$21(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$A4YsiNnvEbItzQVN9AASf9mtL10(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$reduce$0(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ChzTJW5SMwfySFEYu_PVczNujL4(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$shouldSetStreamVolume$32(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GIUywbmH9esdeqs1P7n8AH3h1BQ(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$applyRemoteLabel$4(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HiR6kE-U5E9Acbjpn0RHXuTt-wc(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$mergeRemoteStream$19(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$I9fGsCN9zQfN0YyCoNM9Si1KX3Q(IIJLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$updateLevelByProgressBar$33(IIJLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JcFj4ypoUC7xG8FVBbvTGscPCto(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$isReallevelAndImpliedLevelSame$10(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MNYlLSBqTbBVyKJlrL0czvBN7QQ(Ljava/util/List;Ljava/util/List;ZLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$applyImportance$22(Ljava/util/List;Ljava/util/List;ZLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RSKo6vxbUJo-aGNWHaipMApWg_8(JLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$isUserAttemptInGracePeriod$8(JLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SYiNoBvz1ruvrDDs9VP3wgSjn3g(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$isTracking$6(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$T1P5lIevxAZlF4v2VDQqyz7p_1I(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$mergeRemoteStream$17(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TV9RPfb1XUOdap_ITEJYCQHLnDk(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$applyRowOrder$30(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UQPN25ceMgMfY7qp3l31kQC0gn4(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$updateVolumeStates$28(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$W9H6m0yEeWbQEYBQBurgJt8BUN0(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$updateAccessibilityRowPriority$27(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WLnHYEXcsEYIwkKBW8iCj4dgE2s(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$updateAccessibilityRowPriority$26(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YLsBnH7OIEw9UFzAb4XxamzBxnk(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$mergeRemoteStream$13(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_03p4zLJXgteBK6POH6t9uSmC6I(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$isTracking$5(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ctHoeXVF9l60u5eGpXAkvlriXMw(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$shouldSetStreamVolume$31(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$e1yBcgJfu68O6j-ecaBSPTWdVuE(IZZLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$updateRowPriority$24(IZZLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$f8k_p_AcdDAnldtde9Q_TTqg2RE(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$mergeRemoteStream$15(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hAj1LDVUxOkfsjZ6NPCoKZXlwCA(Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$mergeRemoteStream$14(Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$inkQBsCtHYWIekfxY1ZJEu675aE(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$isReallevelAndImpliedLevelSame$9(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jIpfAkT3ODJd6LA5SSc2Eq7H-Oo(ZZLcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$applyEarProtectLevel$3(ZZLcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$loM76_WSOyURTOL6pW-zovvas5s(Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$mergeRemoteStream$16(Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$p7otHYcMNTcuJqJxhhTakzvTe8M(ILcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$updateRealLevel$11(ILcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$t2JgpV-KP6P13V0Q1fLDiCnX6b8(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$applyActiveState$1(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vvxTEGhTEBHx3ejTJkzImtsi-e8(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/lang/Integer;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$applyImportance$20(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zMadPmalCKS2ckRH1qL6wtnntoY(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$mergeRemoteStream$18(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyActiveState(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 856
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda4;-><init>(I)V

    .line 857
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 865
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static applyEarProtectLevel(Ljava/util/List;ZZLcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;ZZ",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 878
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda16;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda16;-><init>(ZZLcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 879
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 893
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method static applyImportance(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 1069
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda15;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1078
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static applyRemoteLabel(Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 898
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;)Ljava/lang/String;

    move-result-object v2

    .line 899
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;)Ljava/lang/String;

    move-result-object v3

    .line 900
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->BT_SCO_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;)Ljava/lang/String;

    move-result-object v7

    .line 901
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->AUDIO_SHARING_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;)Ljava/lang/String;

    move-result-object v8

    .line 902
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v6

    .line 904
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_MULTI_SOUND_BT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v4

    .line 905
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v5

    .line 907
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda14;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda14;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    .line 908
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 936
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static applyRowOrder(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 1208
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;

    .line 1209
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1210
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static applySmartViewLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1167
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static calcTimeOut(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)I
    .locals 3

    .line 1016
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->FOLDER_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    const/16 v1, 0xbb8

    if-eqz v0, :cond_1

    .line 1017
    sget-boolean p0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x3e8

    :goto_0
    return v1

    .line 1023
    :cond_1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    const/16 v2, 0x1388

    if-eqz v0, :cond_2

    .line 1024
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 1025
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 1028
    :cond_2
    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1029
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 1032
    :cond_3
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method static checkIfNeedToSetProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelState;IIJ)Lcom/samsung/systemui/splugins/volume/VolumePanelState;
    .locals 1

    .line 941
    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isTracking(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 943
    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 944
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    return-object p0

    .line 945
    :cond_0
    invoke-static {p0, p1, p3, p4}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isUserAttemptInGracePeriod(Lcom/samsung/systemui/splugins/volume/VolumePanelState;IJ)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 946
    new-instance p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE_PROGRESS_BAR_LATER:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 947
    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 948
    invoke-virtual {p0, p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 949
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    return-object p0

    .line 950
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->updateRealLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/List;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isReallevelAndImpliedLevelSame(Ljava/util/List;II)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 951
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 952
    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 953
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    return-object p0

    .line 955
    :cond_2
    new-instance p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE_PROGRESS_BAR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 956
    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 957
    invoke-virtual {p0, p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 958
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    return-object p0
.end method

.method static checkRingerMode(Lcom/samsung/systemui/splugins/volume/VolumeState;I)Z
    .locals 1

    .line 1297
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z
    .locals 0

    .line 1293
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static checkZenMuted(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;ZZZZ)Z
    .locals 1

    .line 1340
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    invoke-static {p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    invoke-static {p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BIXBY_VOICE:I

    .line 1341
    invoke-static {p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    invoke-static {p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 1343
    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, p3

    goto :goto_0

    .line 1345
    :cond_1
    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SYSTEM:I

    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result p0

    if-eqz p0, :cond_2

    move p1, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_0
    return p1
.end method

.method static determineEarProtectLevel(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)I
    .locals 3

    .line 1238
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SAFE_MEDIA_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v0

    .line 1239
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SAFE_MEDIA_PIN_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v1

    .line 1240
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_MULTI_SOUND_BT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p1

    .line 1241
    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    invoke-static {p0, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_4

    :cond_0
    sget-boolean v2, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->VOLUME_DUAL_AUDIO:Z

    if-eqz v2, :cond_2

    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    .line 1242
    invoke-static {p0, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_1
    if-nez v0, :cond_4

    :cond_2
    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    .line 1243
    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez v1, :cond_4

    :cond_3
    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_AUDIO_SHARING:I

    .line 1244
    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1245
    :cond_4
    :goto_0
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    return p0

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method static determineEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)Z
    .locals 9

    .line 1353
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v0

    .line 1354
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1355
    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    invoke-static {p0, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v2

    goto :goto_0

    .line 1356
    :cond_0
    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    invoke-static {p0, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v2

    .line 1357
    :goto_0
    sget v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    invoke-static {v3, p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamVibrate(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    sget v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    .line 1358
    invoke-static {v3, p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamSilent(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result v3

    if-nez v3, :cond_1

    sget v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SYSTEM:I

    .line 1359
    invoke-static {v3, p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamVibrate(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result v3

    if-nez v3, :cond_1

    sget v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SYSTEM:I

    .line 1360
    invoke-static {v3, p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamSilent(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    if-eqz v2, :cond_3

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v5

    .line 1363
    :goto_1
    sget v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    invoke-static {p0, v3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->FIXED_SCO_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    .line 1364
    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    move v3, v5

    .line 1366
    :goto_2
    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_RINGER:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {v0, v6}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result v6

    .line 1367
    sget-object v7, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_SYSTEM:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {v0, v7}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result v7

    .line 1368
    sget-object v8, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_MEDIA:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result v0

    if-eqz p3, :cond_5

    .line 1369
    invoke-static {p0, v0, v7, v6, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkZenMuted(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;ZZZZ)Z

    move-result p3

    if-eqz p3, :cond_5

    move p3, v4

    goto :goto_3

    :cond_5
    move p3, v5

    .line 1371
    :goto_3
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    invoke-static {p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v0

    if-nez v0, :cond_7

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    invoke-static {p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move v0, v5

    goto :goto_5

    :cond_7
    :goto_4
    move v0, v4

    .line 1372
    :goto_5
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_ZEN_NONE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v1

    .line 1373
    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p2

    if-eqz v0, :cond_9

    if-nez v1, :cond_8

    if-eqz p2, :cond_9

    :cond_8
    move v0, v4

    goto :goto_6

    :cond_9
    move v0, v5

    :goto_6
    if-nez p2, :cond_b

    if-nez v0, :cond_b

    if-nez v3, :cond_b

    if-eqz p3, :cond_a

    goto :goto_7

    :cond_a
    move p2, v5

    goto :goto_8

    :cond_b
    :goto_7
    move p2, v4

    :goto_8
    if-nez p2, :cond_d

    .line 1378
    sget p3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    invoke-static {p0, p3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 1379
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_DLNA_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    .line 1380
    sget-object p3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SUPPORT_TV_VOLUME_CONTROL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p1, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p3

    .line 1381
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->MUSIC_FINE_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p1

    if-nez p0, :cond_c

    if-eqz p3, :cond_d

    if-nez p1, :cond_d

    :cond_c
    return v5

    :cond_d
    if-eqz v2, :cond_e

    if-nez p2, :cond_e

    goto :goto_9

    :cond_e
    move v4, v5

    :goto_9
    return v4
.end method

.method static determineIconClickable(IZ)Z
    .locals 2

    .line 1175
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    if-eqz p1, :cond_0

    return v1

    .line 1178
    :cond_0
    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_VOICE_CALL:I

    if-eq p0, p1, :cond_1

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static determineIconEnabled(IZ)Z
    .locals 1

    .line 1183
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    if-ne p0, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-ne p0, p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static determineIconState(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;Z)I
    .locals 3

    .line 1261
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    invoke-static {v0, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamVibrate(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_c

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    invoke-static {v0, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamVibrate(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1263
    :cond_0
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_BT:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto/16 :goto_3

    .line 1265
    :cond_1
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    invoke-static {p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    const/4 p0, 0x4

    goto :goto_0

    :cond_2
    const/4 p0, 0x5

    :goto_0
    move v1, p0

    goto/16 :goto_3

    .line 1267
    :cond_3
    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1268
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;)I

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    const/4 p0, 0x7

    goto :goto_0

    :cond_6
    const/4 p0, 0x6

    goto :goto_0

    .line 1270
    :cond_7
    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    invoke-static {p0, p2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result p2

    if-eqz p2, :cond_8

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_APP_MIRRORING:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result p2

    if-eqz p2, :cond_8

    const/16 v1, 0x8

    goto :goto_3

    .line 1272
    :cond_8
    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    invoke-static {p2, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamSilent(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result p2

    if-nez p2, :cond_d

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    invoke-static {p2, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamSilent(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result p2

    if-nez p2, :cond_d

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    invoke-static {p2, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamNormal(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result p2

    if-nez p2, :cond_b

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_VOICE_CALL:I

    .line 1273
    invoke-static {p0, p2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result p2

    if-nez p2, :cond_a

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    .line 1274
    invoke-static {p0, p2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result p2

    if-eqz p2, :cond_9

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    .line 1275
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;)I

    move-result p1

    if-eqz p1, :cond_d

    :cond_a
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_3

    :cond_b
    const/4 v1, 0x3

    goto :goto_3

    :cond_c
    :goto_2
    move v1, v2

    :cond_d
    :goto_3
    return v1
.end method

.method static determineMaxLevel(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)I
    .locals 2

    .line 1403
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v0

    .line 1404
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->MAX:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;)I

    move-result p0

    .line 1405
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object p1

    .line 1406
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result p1

    .line 1408
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    add-int/lit8 p0, p0, 0x1

    :cond_0
    return p0
.end method

.method static determineMinLevel(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)I
    .locals 2

    .line 1415
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v0

    .line 1416
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->MIN:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;)I

    move-result p0

    .line 1417
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object p1

    .line 1418
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result p1

    .line 1420
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method static determineRealVolumeLevel(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)I
    .locals 5

    .line 1392
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v0

    .line 1393
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    invoke-static {p0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    invoke-static {p0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 1394
    :goto_1
    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_ZEN_NONE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p1, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p1

    if-eqz v1, :cond_3

    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    move p1, v3

    goto :goto_2

    :cond_3
    move p1, v2

    .line 1397
    :goto_2
    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    invoke-static {p2, p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamNormal(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result p2

    if-nez p2, :cond_7

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_3

    .line 1398
    :cond_5
    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1399
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;)I

    move-result p0

    add-int/lit8 v2, p0, 0x1

    goto :goto_3

    :cond_6
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;)I

    move-result v2

    :cond_7
    :goto_3
    return v2
.end method

.method static determineRemoteLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/lang/String;
    .locals 3

    .line 1215
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v0

    .line 1216
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->ACTIVE_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {p2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;)Ljava/lang/String;

    move-result-object p2

    .line 1217
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v1

    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-ne v1, v2, :cond_2

    .line 1218
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_BT:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1221
    :cond_0
    sget-boolean p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->VOLUME_DUAL_AUDIO:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1222
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->DUAL_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p2

    .line 1227
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v1

    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p2

    .line 1230
    :cond_3
    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1231
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1233
    :cond_4
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static determineRowPriority(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;IZZ)I
    .locals 2

    .line 1188
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v0

    .line 1190
    sget-boolean v1, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->VOLUME_DUAL_AUDIO:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne p1, v1, :cond_1

    if-eqz p3, :cond_0

    .line 1191
    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    .line 1193
    :cond_1
    :goto_0
    sget p3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_AUDIO_SHARING:I

    if-ne p1, p3, :cond_2

    .line 1194
    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    .line 1197
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p3

    const/4 v1, 0x1

    if-ne p3, p1, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    .line 1199
    :cond_3
    sget-object p3, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p3

    if-eqz p3, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    if-eqz p2, :cond_6

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p2

    if-ne p2, v1, :cond_6

    :cond_5
    :goto_1
    move v0, v1

    goto :goto_2

    .line 1201
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_AUDIO_SHARING:I

    if-ne p0, p2, :cond_7

    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-ne p1, p0, :cond_7

    goto :goto_1

    :cond_7
    :goto_2
    return v0
.end method

.method static determineVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;IZZZ)Z
    .locals 6

    .line 1314
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v0

    .line 1315
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1316
    :goto_0
    sget v4, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_AUDIO_SHARING:I

    if-ne p1, v4, :cond_2

    .line 1317
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v4

    sget v5, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-ne v4, v5, :cond_1

    move v1, v2

    goto :goto_1

    .line 1319
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v4

    sget v5, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_AUDIO_SHARING:I

    if-ne v4, v5, :cond_2

    move v1, v3

    .line 1325
    :cond_2
    :goto_1
    sget-boolean v4, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->VOLUME_DUAL_AUDIO:Z

    if-eqz v4, :cond_9

    if-eqz p4, :cond_3

    .line 1326
    sget v4, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    goto :goto_2

    :cond_3
    sget v4, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    :goto_2
    if-eq p1, v4, :cond_5

    sget v4, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne p1, v4, :cond_4

    goto :goto_3

    :cond_4
    move p1, v3

    goto :goto_4

    :cond_5
    :goto_3
    move p1, v2

    .line 1328
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v4

    if-eqz p4, :cond_6

    sget p4, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    goto :goto_5

    :cond_6
    sget p4, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    :goto_5
    if-eq v4, p4, :cond_8

    .line 1329
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p4

    sget v4, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne p4, v4, :cond_7

    goto :goto_6

    :cond_7
    move p4, v3

    goto :goto_7

    :cond_8
    :goto_6
    move p4, v2

    :goto_7
    if-nez p2, :cond_9

    if-eqz p3, :cond_9

    if-eqz p1, :cond_9

    if-eqz p4, :cond_9

    if-eqz v0, :cond_9

    move p1, v2

    goto :goto_8

    :cond_9
    move p1, v3

    :goto_8
    if-eqz p2, :cond_a

    .line 1333
    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ACTIVE_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p0

    or-int/2addr p0, v0

    if-nez p0, :cond_c

    :cond_a
    if-nez v1, :cond_c

    if-eqz p1, :cond_b

    goto :goto_9

    :cond_b
    move v2, v3

    :cond_c
    :goto_9
    return v2
.end method

.method static getImpliedLevel(III)I
    .locals 1

    .line 1450
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-eq p0, v0, :cond_4

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    if-eq p0, v0, :cond_4

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1453
    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->VOLUME_SMART_VIEW_STREAM:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-ne p0, v0, :cond_1

    move p1, p2

    goto :goto_1

    :cond_1
    mul-int/lit8 p0, p1, 0x64

    if-nez p2, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    if-ne p2, p0, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 1463
    invoke-static {p2, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->getMedianLevel(III)I

    move-result p1

    goto :goto_1

    .line 1451
    :cond_4
    :goto_0
    div-int/lit8 p2, p2, 0xa

    mul-int/lit8 p1, p2, 0xa

    :goto_1
    return p1
.end method

.method static getLastAudibleLevelOrMinLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I
    .locals 7

    .line 1513
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    .line 1514
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v1

    .line 1515
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v2

    .line 1516
    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    .line 1517
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v3

    .line 1518
    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v4

    .line 1519
    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MIN:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v5

    .line 1520
    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->AUDIBLE_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p1

    if-eqz v0, :cond_0

    .line 1521
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    if-ne v3, v0, :cond_3

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    if-ne v3, v0, :cond_3

    :goto_0
    if-nez v1, :cond_5

    .line 1523
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_NORMAL:I

    if-ne p0, v0, :cond_2

    if-nez v2, :cond_5

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    move v4, p0

    goto :goto_2

    :cond_2
    if-nez v4, :cond_5

    :goto_1
    move v4, p1

    goto :goto_2

    .line 1533
    :cond_3
    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-eq v3, p0, :cond_5

    if-ne v4, v5, :cond_4

    goto :goto_1

    :cond_4
    move v4, v5

    :cond_5
    :goto_2
    return v4
.end method

.method private static getMedianLevel(III)I
    .locals 0

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    int-to-float p1, p2

    mul-float/2addr p0, p1

    float-to-int p0, p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static getRealLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;IZ)I
    .locals 3

    .line 993
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 994
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    if-ne v0, v2, :cond_2

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_VIBRATE:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_SILENT:I

    if-ne p1, v0, :cond_2

    :cond_1
    return v1

    .line 997
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_3

    .line 998
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 1000
    :cond_3
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method private static getRingerModeByIconToggle(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)I
    .locals 3

    .line 1474
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 1475
    :cond_0
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1476
    :goto_0
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    .line 1477
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v1, :cond_5

    .line 1479
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1480
    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_SILENT:I

    if-ne p1, p0, :cond_4

    if-eqz v0, :cond_4

    .line 1481
    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_VIBRATE:I

    goto :goto_1

    .line 1486
    :cond_2
    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_NORMAL:I

    if-ne p1, p0, :cond_4

    if-eqz v0, :cond_3

    .line 1487
    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_VIBRATE:I

    goto :goto_1

    :cond_3
    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_SILENT:I

    :cond_4
    :goto_1
    move p1, p0

    :cond_5
    return p1
.end method

.method private static isDisabledWarningDialog(IZ)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1541
    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->TYPE_MINI_SVIEW_WALLET_COVER:I

    if-eq p0, p1, :cond_0

    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->TYPE_CLEAR_SIDE_VIEW_COVER:I

    if-eq p0, p1, :cond_0

    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->TYPE_CLEAR_CAMERA_VIEW_COVER:I

    if-eq p0, p1, :cond_0

    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->TYPE_CLEAR_COVER:I

    if-eq p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isReallevelAndImpliedLevelSame(Ljava/util/List;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;II)Z"
        }
    .end annotation

    .line 977
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda24;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda24;-><init>(I)V

    .line 978
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda2;-><init>(I)V

    .line 979
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 980
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method static isStreamNormal(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z
    .locals 0

    .line 1301
    invoke-static {p1, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_NORMAL:I

    invoke-static {p2, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkRingerMode(Lcom/samsung/systemui/splugins/volume/VolumeState;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isStreamSilent(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z
    .locals 0

    .line 1309
    invoke-static {p1, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_SILENT:I

    invoke-static {p2, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkRingerMode(Lcom/samsung/systemui/splugins/volume/VolumeState;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isStreamVibrate(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z
    .locals 0

    .line 1305
    invoke-static {p1, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_VIBRATE:I

    invoke-static {p2, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkRingerMode(Lcom/samsung/systemui/splugins/volume/VolumeState;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTracking(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z
    .locals 1

    .line 963
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda22;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda22;-><init>(I)V

    .line 964
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda18;->INSTANCE:Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda18;

    .line 965
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 966
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static isUserAttemptInGracePeriod(Lcom/samsung/systemui/splugins/volume/VolumePanelState;IJ)Z
    .locals 1

    .line 970
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda21;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda21;-><init>(I)V

    .line 971
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda11;

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda11;-><init>(J)V

    .line 972
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 973
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$applyActiveState$1(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 1

    .line 858
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 859
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ACTIVE_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const/4 v0, 0x1

    .line 860
    invoke-virtual {p0, p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 861
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private static synthetic lambda$applyEarProtectLevel$3(ZZLcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 2

    .line 880
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-ne v0, v1, :cond_0

    if-nez p0, :cond_4

    .line 881
    :cond_0
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_4

    .line 882
    :cond_1
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_AUDIO_SHARING:I

    if-eq v0, v1, :cond_4

    sget-boolean v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->VOLUME_DUAL_AUDIO:Z

    if-eqz v0, :cond_3

    .line 883
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_MULTI_SOUND_BT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 884
    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    goto :goto_0

    .line 889
    :cond_3
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const/4 p2, -0x1

    .line 890
    invoke-virtual {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 891
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0

    .line 885
    :cond_4
    :goto_0
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    sget-object p3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 886
    invoke-virtual {p2, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 887
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$applyImportance$20(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/lang/Integer;)Z
    .locals 0

    .line 1070
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$applyImportance$21(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/lang/Integer;)Z
    .locals 0

    .line 1071
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$applyImportance$22(Ljava/util/List;Ljava/util/List;ZLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 4

    .line 1070
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda28;

    invoke-direct {v0, p3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda28;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    .line 1071
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda27;

    invoke-direct {v0, p3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda27;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    .line 1072
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v0, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 1073
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 1074
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    sget v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ACCESSIBILITY:I

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 1075
    :cond_0
    invoke-virtual {p3, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p2

    or-int/2addr p0, p2

    xor-int/lit8 p1, p1, 0x1

    and-int p2, p0, p1

    .line 1074
    :goto_0
    invoke-virtual {v0, v1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 1076
    invoke-virtual {p3, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 1077
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$applyRemoteLabel$4(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 3

    .line 909
    invoke-virtual {p7}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    const-string v2, ") ("

    if-ne v0, v1, :cond_2

    .line 910
    new-instance p4, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p4, p7}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object p5, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 913
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    sget-boolean p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->VOLUME_DUAL_AUDIO:Z

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 915
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->DUAL_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p7, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object p1

    .line 916
    :cond_0
    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 911
    :goto_0
    invoke-virtual {p4, p5, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 918
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0

    .line 919
    :cond_2
    invoke-virtual {p7}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    sget p3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    if-ne p1, p3, :cond_3

    if-nez p4, :cond_3

    .line 920
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0, p7}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    .line 921
    invoke-virtual {p0, p1, p5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 922
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0

    .line 923
    :cond_3
    sget-boolean p1, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->VOLUME_DUAL_AUDIO:Z

    if-eqz p1, :cond_5

    invoke-virtual {p7}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    sget p3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne p1, p3, :cond_5

    .line 924
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p1, p7}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object p3, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    if-eqz p2, :cond_4

    .line 926
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->DUAL_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p7, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 927
    :cond_4
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->DUAL_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p7, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    .line 925
    :goto_1
    invoke-virtual {p1, p3, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 928
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0

    .line 929
    :cond_5
    invoke-virtual {p7}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_AUDIO_SHARING:I

    if-ne p0, p1, :cond_6

    .line 930
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0, p7}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    .line 931
    invoke-virtual {p0, p1, p6}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 932
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0

    :cond_6
    return-object p7
.end method

.method private static synthetic lambda$applyRowOrder$30(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I
    .locals 1

    .line 1209
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p0

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$isReallevelAndImpliedLevelSame$10(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Boolean;
    .locals 3

    .line 979
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MAX:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p1

    invoke-static {v1, p1, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->getImpliedLevel(III)I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isReallevelAndImpliedLevelSame$9(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 978
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$isTracking$5(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 964
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$isTracking$6(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Boolean;
    .locals 1

    .line 965
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isUserAttemptInGracePeriod$7(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 971
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$isUserAttemptInGracePeriod$8(JLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Boolean;
    .locals 2

    .line 972
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;->USER_ATTEMPT_TIME:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;

    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;)J

    move-result-wide v0

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x3e8

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$mergeRemoteStream$13(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Z
    .locals 0

    .line 1038
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$mergeRemoteStream$14(Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 1

    .line 1038
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda26;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda26;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$mergeRemoteStream$15(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 1043
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$mergeRemoteStream$16(Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Z
    .locals 1

    .line 1042
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1043
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda29;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda29;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$mergeRemoteStream$17(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 1

    .line 1050
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$mergeRemoteStream$18(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Integer;
    .locals 1

    .line 1051
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$mergeRemoteStream$19(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 2

    .line 1055
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    .line 1056
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const/4 v1, 0x1

    .line 1057
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 1058
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 1059
    invoke-virtual {p1, v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 1060
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$reduce$0(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 1

    .line 288
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$resetActiveState$2(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 2

    .line 871
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ACTIVE_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const/4 v1, 0x0

    .line 872
    invoke-virtual {v0, p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 873
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$shouldSetStreamVolume$31(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 1429
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$shouldSetStreamVolume$32(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Boolean;
    .locals 3

    .line 1430
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MAX:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p1

    invoke-static {v1, p1, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->getImpliedLevel(III)I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateAccessibilityRowPriority$25(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 1

    .line 1101
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ACCESSIBILITY:I

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateAccessibilityRowPriority$26(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Integer;
    .locals 1

    .line 1102
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateAccessibilityRowPriority$27(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 2

    .line 1115
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ACCESSIBILITY:I

    if-ne v0, v1, :cond_0

    .line 1116
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 1117
    invoke-virtual {v0, p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 1118
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private static synthetic lambda$updateLevelByIconToggle$34(ILcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 2

    .line 1499
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 1500
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 1501
    invoke-static {p1, p2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->getLastAudibleLevelOrMinLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;->USER_ATTEMPT_TIME:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;

    const-wide/16 v0, 0x0

    .line 1502
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;J)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 1503
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0

    .line 1505
    :cond_0
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateLevelByProgressBar$33(IIJLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 3

    .line 1436
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 1437
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0, p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 1438
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MAX:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p4, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p4

    invoke-static {v1, p4, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->getImpliedLevel(III)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;->USER_ATTEMPT_TIME:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;

    .line 1439
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;J)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 1440
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0

    .line 1442
    :cond_0
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0, p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateRealLevel$11(ILcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 3

    .line 986
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 987
    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    invoke-static {p2, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->getRealLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;IZ)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 988
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateRowPriority$24(IZZLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 2

    .line 1091
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v0, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 1092
    invoke-static {p3, p0, p1, p2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineRowPriority(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;IZZ)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 1093
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateRowVisibility$23(Lcom/samsung/systemui/splugins/volume/VolumePanelState;ZLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 5

    .line 1083
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 1084
    invoke-virtual {p0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v2

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 1085
    invoke-virtual {p0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v3

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_MULTI_SOUND_BT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    .line 1084
    invoke-static {p2, v2, p1, v3, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;IZZZ)Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 1086
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateTracking$12(IZLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 1

    .line 1005
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 1006
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 1007
    invoke-virtual {p0, p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0

    .line 1009
    :cond_0
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateVolumeStates$28(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Z
    .locals 0

    .line 1132
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateVolumeStates$29(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 9

    .line 1131
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getStreamStates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda25;

    invoke-direct {v1, p3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda25;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 1132
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1133
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    if-eqz v0, :cond_0

    .line 1135
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v1, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->NAME_RES:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->NAME_RES:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    .line 1136
    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    .line 1137
    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    .line 1138
    invoke-static {p3, v0, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineRemoteLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ROUTED_TO_BLUETOOTH:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_BT:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    .line 1139
    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    .line 1140
    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 1141
    invoke-virtual {p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v4

    invoke-static {v0, p0, v4}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineRealVolumeLevel(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->SLIDER_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_ZEN_PRIORITY_ONLY:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 1142
    invoke-virtual {p0, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v4

    invoke-static {v0, p0, p1, v4}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)Z

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MIN:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 1143
    invoke-static {v0, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineMinLevel(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MAX:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 1144
    invoke-static {v0, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineMaxLevel(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 1145
    invoke-virtual {p1, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v5

    .line 1146
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v6

    sget-object v7, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {v6, v7}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result v6

    sget-object v7, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_MULTI_SOUND_BT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 1147
    invoke-virtual {p0, v7}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v8

    .line 1145
    invoke-static {p3, p2, v5, v6, v8}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;IZZZ)Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 1148
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_AUDIO_DLNA_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p0, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v6

    invoke-static {v0, v5, v6}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineIconState(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;Z)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->AUDIBLE_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 1149
    invoke-static {p3, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->updateAudibleLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 1150
    invoke-static {v0, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineEarProtectLevel(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 1151
    invoke-virtual {p1, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v4

    .line 1152
    invoke-virtual {p0, v7}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v5

    .line 1151
    invoke-static {p3, p2, v4, v5}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineRowPriority(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;IZZ)I

    move-result p2

    invoke-virtual {v1, v2, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ICON_CLICKABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 1153
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v4

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result v4

    invoke-static {v2, v4}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineIconClickable(IZ)Z

    move-result v2

    invoke-virtual {p2, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ICON_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 1154
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v2

    invoke-virtual {p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    invoke-static {v2, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineIconEnabled(IZ)Z

    move-result p1

    invoke-virtual {p2, v1, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p1

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->SMART_VIEW_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->SMART_VIEW_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    .line 1155
    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applySmartViewLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->DUAL_BT_DEVICE_ADDRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->DUAL_BT_DEVICE_ADDRESS:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    .line 1156
    invoke-virtual {v0, p2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->DUAL_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->DUAL_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    .line 1157
    invoke-virtual {v0, p2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 1158
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p3
.end method

.method static mergeRemoteStream(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumeStreamState;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 1037
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda30;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda30;-><init>(Ljava/util/List;)V

    .line 1038
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1039
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1041
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda31;

    invoke-direct {v1, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda31;-><init>(Ljava/util/List;)V

    .line 1042
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1044
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1046
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1047
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1049
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda34;->INSTANCE:Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda34;

    .line 1050
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda20;->INSTANCE:Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda20;

    .line 1051
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1052
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 1054
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda5;-><init>(I)V

    .line 1055
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1061
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 1054
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method static prepareVolumePanelRow(Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 811
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 813
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_VOICE_CALL:I

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 814
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v1

    .line 813
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v5, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    invoke-virtual {v1, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    .line 816
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v1

    .line 815
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v5, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ACCESSIBILITY:I

    invoke-virtual {v1, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    .line 819
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v1

    .line 818
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v5, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    invoke-virtual {v1, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    .line 822
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v1, v4, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v1

    .line 821
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    sget-boolean v1, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->VOLUME_DUAL_AUDIO:Z

    if-eqz v1, :cond_0

    .line 824
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v6, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    invoke-virtual {v1, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    .line 825
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v1, v4, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v1

    .line 824
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    :cond_0
    sget-boolean v1, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->VOLUME_SMART_VIEW_STREAM:Z

    if-eqz v1, :cond_1

    .line 828
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v6, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    invoke-virtual {v1, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    .line 829
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v1, v4, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v1

    .line 828
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    :cond_1
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v6, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    invoke-virtual {v1, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    .line 832
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v1, v4, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v1

    .line 831
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    sget-boolean v1, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->VOLUME_BUDS_TOGETHER:Z

    if-eqz v1, :cond_2

    .line 834
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v6, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_AUDIO_SHARING:I

    invoke-virtual {v1, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    .line 835
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v1, v4, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v1

    .line 834
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p0, :cond_3

    .line 839
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0, v2, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 840
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v4, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    .line 839
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    :cond_3
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BIXBY_VOICE:I

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 843
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v4, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    .line 842
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0, v2, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 845
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v4, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    .line 844
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SYSTEM:I

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0, v2, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 847
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v4, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    .line 846
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ALARM:I

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 849
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v4, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    .line 848
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static resetActiveState(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 870
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda17;->INSTANCE:Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda17;

    .line 871
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 873
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method static shouldSetStreamVolume(IILcom/samsung/systemui/splugins/volume/VolumePanelState;)Z
    .locals 1

    .line 1428
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda23;-><init>(I)V

    .line 1429
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1430
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1431
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method static updateAccessibilityRowPriority(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 1098
    invoke-static {p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyRowOrder(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 1100
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda32;->INSTANCE:Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda32;

    .line 1101
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda19;->INSTANCE:Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda19;

    .line 1102
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1105
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    const/4 v1, 0x4

    .line 1106
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 1108
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1113
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1114
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1122
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method static updateAudibleLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)I
    .locals 1

    .line 1252
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;)I

    move-result p1

    .line 1253
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->AUDIBLE_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    if-lez p0, :cond_1

    move p1, p0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method private static updateLevelByIconToggle(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 1497
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda7;-><init>(ILcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1498
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1508
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static updateLevelByProgressBar(Ljava/util/List;IIJ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;IIJ)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 1435
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda6;-><init>(IIJ)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1444
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static updateRealLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 984
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v0

    .line 985
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda8;-><init>(ILcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 986
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 989
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static updateRowPriority(Ljava/util/List;IZZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;IZZ)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 1090
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda10;-><init>(IZZ)V

    .line 1091
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1093
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static updateRowVisibility(Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 1082
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    .line 1083
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1086
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static updateTracking(Ljava/util/List;IZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;IZ)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 1004
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda9;-><init>(IZ)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1011
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method static updateVolumeStates(Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 1129
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda12;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)V

    .line 1130
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1163
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public reduce(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Lcom/samsung/systemui/splugins/volume/VolumePanelState;
    .locals 10

    .line 129
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_IDLE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 130
    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 131
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    .line 134
    sget-object v1, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_8

    .line 800
    :pswitch_0
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_CSD_100_WARNING_DIALOG_OK_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 801
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 802
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 793
    :pswitch_1
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_CSD_100_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 794
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_CSD_100_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 795
    invoke-virtual {p0, p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 796
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 764
    :pswitch_2
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    .line 765
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    .line 766
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->FLAGS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p1

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->FLAG_DISMISS_UI_WARNINGS:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_1

    .line 767
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_CSD_100_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 768
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_CSD_100_WARNING_DIALOG_FLAG_DISMISS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 769
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 770
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 772
    :cond_0
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 773
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 774
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 776
    :cond_1
    invoke-static {p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isDisabledWarningDialog(IZ)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 777
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 778
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 779
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 780
    :cond_2
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_CSD_100_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 781
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SHOW_VOLUME_CSD_100_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 782
    invoke-virtual {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p1

    .line 783
    invoke-virtual {p1, p0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 784
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 786
    :cond_3
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 787
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 788
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 757
    :pswitch_3
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DUAL_PLAY_MODE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 758
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->WITH_ANIMATION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 759
    invoke-virtual {p0, p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 760
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 748
    :pswitch_4
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SET_VOLUME_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 749
    invoke-virtual {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 750
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ICON_TARGET_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->ICON_TARGET_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 751
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ICON_CURRENT_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->ICON_CURRENT_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 752
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 753
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 741
    :pswitch_5
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_CAPTION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 742
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_CAPTION_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 743
    invoke-virtual {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p2

    xor-int/2addr p2, v3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 744
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 731
    :pswitch_6
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_CAPTION_COMPONENT_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    .line 732
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_CAPTION_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p1

    .line 733
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_CAPTION_COMPONENT_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 734
    invoke-virtual {v0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p2

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_CAPTION_COMPONENT_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 735
    invoke-virtual {p2, v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_CAPTION_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 736
    invoke-virtual {p0, p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 737
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 725
    :pswitch_7
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_ARROW_LEFT_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 726
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 727
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 719
    :pswitch_8
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_ARROW_RIGHT_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 720
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 721
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 712
    :pswitch_9
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_FOLDER_STATE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 713
    invoke-virtual {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->FOLDER_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FOLDER_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 714
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 715
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 705
    :pswitch_a
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_STATUS_MESSAGE_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 706
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->WITH_ANIMATION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 707
    invoke-virtual {p0, p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 708
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 698
    :pswitch_b
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 699
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SEEKBAR_TOUCH_UP:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 700
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 701
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 691
    :pswitch_c
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 692
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SEEKBAR_TOUCH_DOWN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 693
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 694
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 684
    :pswitch_d
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 685
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SEEKBAR_START_PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 686
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 687
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 677
    :pswitch_e
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SETTINGS_BUTTON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 678
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->WITH_ANIMATION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 679
    invoke-virtual {p0, p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 680
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 669
    :pswitch_f
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_OPEN_THEME_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 670
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->WITH_ANIMATION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 671
    invoke-virtual {p0, p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->OPEN_THEME_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 672
    invoke-virtual {p0, p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 673
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 663
    :pswitch_10
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_SAFETY_WARNING_DIALOG_CANCEL_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 664
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 665
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 657
    :pswitch_11
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_SAFETY_WARNING_DIALOG_OK_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 658
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 659
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 650
    :pswitch_12
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 651
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 652
    invoke-virtual {p0, p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 653
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 621
    :pswitch_13
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    .line 622
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    .line 623
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->FLAGS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p1

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->FLAG_DISMISS_UI_WARNINGS:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_5

    .line 624
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 625
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_SAFETY_WARNING_DIALOG_FLAG_DISMISS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 626
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 627
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 629
    :cond_4
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 630
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 631
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 633
    :cond_5
    invoke-static {p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isDisabledWarningDialog(IZ)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 634
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 635
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 636
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 637
    :cond_6
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 638
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SHOW_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 639
    invoke-virtual {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p1

    .line 640
    invoke-virtual {p1, p0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 641
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 643
    :cond_7
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 644
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 645
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 614
    :pswitch_14
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_PANEL_COMPLETED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 615
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_SUB_DISPLAY_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 616
    invoke-virtual {p0, p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 617
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 603
    :pswitch_15
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_PANEL_COMPLETED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 604
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 605
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->resetActiveState(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 606
    invoke-virtual {p0, p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 607
    invoke-virtual {p0, p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ANIMATING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 608
    invoke-virtual {p0, p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->CONFIGURATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 609
    invoke-virtual {p0, p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 610
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 596
    :pswitch_16
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 597
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 598
    invoke-virtual {p0, p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 599
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 590
    :pswitch_17
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_LIMITER_DIALOG_VOLUME_DOWN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 591
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 592
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 584
    :pswitch_18
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_LIMITER_DIALOG_CANCEL_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 585
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 586
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 577
    :pswitch_19
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_LIMITER_DIALOG_SETTINS_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 578
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->WITH_ANIMATION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 579
    invoke-virtual {p0, p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 580
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 558
    :pswitch_1a
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    .line 559
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    .line 560
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 561
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 562
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 563
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 564
    :cond_8
    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isDisabledWarningDialog(IZ)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 565
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 566
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 567
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 569
    :cond_9
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SHOW_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 570
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 571
    invoke-virtual {p0, v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 572
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 551
    :pswitch_1b
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SMART_VIEW_SEEKBAR_TOUCHED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 552
    invoke-virtual {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 553
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 554
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 532
    :pswitch_1c
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    if-nez p0, :cond_b

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    if-nez p0, :cond_b

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 533
    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    if-nez p0, :cond_b

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_CSD_100_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 534
    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_0

    .line 542
    :cond_a
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 543
    invoke-virtual {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 544
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 545
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 546
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 535
    :cond_b
    :goto_0
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_COVER_STATE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 536
    invoke-virtual {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->WITH_ANIMATION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 537
    invoke-virtual {p0, p2, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 538
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 539
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 540
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 508
    :pswitch_1d
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_DENSITY_OR_FONT_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 509
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_CONFIGURATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 510
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->CONFIGURATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 511
    invoke-virtual {p0, p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 512
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 513
    :cond_c
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_d

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_ORIENTATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 514
    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 515
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_ORIENTATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 516
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->WITH_ANIMATION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 517
    invoke-virtual {p0, p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 518
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 519
    :cond_d
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_DISPLAY_TYPE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 520
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 521
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->WITH_ANIMATION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 522
    invoke-virtual {p0, p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 523
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 525
    :cond_e
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 526
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 527
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 481
    :pswitch_1e
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p0

    .line 482
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_SUB_DISPLAY_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 483
    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    move v2, v3

    .line 484
    :cond_10
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_FROM_KEY:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v0

    .line 486
    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_HOME_IOT:Z

    if-eqz v1, :cond_11

    .line 487
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->VOLUME_DIRECTION:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p1

    .line 488
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_PLAY_SOUND_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 489
    invoke-virtual {v0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p2

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 490
    invoke-virtual {p2, v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->VOLUME_DIRECTION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 491
    invoke-virtual {p0, p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 492
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 493
    :cond_11
    sget-boolean p1, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->VOLUME_SMART_VIEW_STREAM:Z

    if-eqz p1, :cond_12

    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-eq p0, p1, :cond_14

    :cond_12
    if-nez v2, :cond_13

    if-nez v0, :cond_14

    :cond_13
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ZEN_MODE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 495
    invoke-virtual {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 496
    :cond_14
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 497
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 498
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 500
    :cond_15
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_PLAY_SOUND_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 501
    invoke-virtual {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p1

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 502
    invoke-virtual {p1, p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 503
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 472
    :pswitch_1f
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    .line 473
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    .line 474
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_RESCHEDULE_TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 475
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 476
    invoke-static {p2, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->calcTimeOut(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 477
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 465
    :pswitch_20
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 466
    invoke-virtual {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOW_A11Y_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SHOW_A11Y_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 467
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 468
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 458
    :pswitch_21
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 459
    invoke-virtual {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SETUP_WIZARD_COMPLETE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SETUP_WIZARD_COMPLETE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 460
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 461
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 451
    :pswitch_22
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 452
    invoke-virtual {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 453
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 454
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 441
    :pswitch_23
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    .line 442
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    .line 443
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_TOUCH_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 444
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 445
    invoke-static {p2, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->calcTimeOut(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 446
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 427
    :pswitch_24
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    if-nez p0, :cond_17

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_SUB_DISPLAY_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 428
    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_1

    .line 434
    :cond_16
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 435
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 436
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 429
    :cond_17
    :goto_1
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p0

    .line 430
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v0

    .line 431
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->SYSTEM_TIME_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;)J

    move-result-wide v1

    .line 432
    invoke-static {p2, p0, v0, v1, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkIfNeedToSetProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelState;IIJ)Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 411
    :pswitch_25
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p0

    .line 412
    sget-boolean p1, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->VOLUME_SMART_VIEW_STREAM:Z

    if-eqz p1, :cond_18

    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-ne p0, p1, :cond_18

    .line 413
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SMART_VIEW_ICON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 414
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 415
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 417
    :cond_18
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_ICON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 418
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 419
    invoke-virtual {p1, v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p1

    .line 420
    invoke-static {p2, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->updateLevelByIconToggle(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 421
    invoke-static {p2, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->getRingerModeByIconToggle(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 422
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 393
    :pswitch_26
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p0

    .line 394
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v0

    .line 395
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->SYSTEM_TIME_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;)J

    move-result-wide v1

    .line 397
    invoke-static {p0, v0, p2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->shouldSetStreamVolume(IILcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 398
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SET_STREAM_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 399
    invoke-virtual {p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p1

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 400
    invoke-virtual {p1, v3, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p1

    .line 401
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p2

    invoke-static {p2, p0, v0, v1, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->updateLevelByProgressBar(Ljava/util/List;IIJ)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 402
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 404
    :cond_19
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 405
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 406
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 384
    :pswitch_27
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 385
    invoke-virtual {p0, v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_STOP_SLIDER_TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 386
    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 387
    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 388
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p1

    invoke-static {p2, p1, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->updateTracking(Ljava/util/List;IZ)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 389
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 377
    :pswitch_28
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_START_SLIDER_TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 378
    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 379
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p2

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p1

    invoke-static {p2, p1, v3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->updateTracking(Ljava/util/List;IZ)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 380
    invoke-virtual {p0, p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 381
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 350
    :pswitch_29
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ANIMATING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 351
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 352
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 353
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 355
    :cond_1a
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    xor-int/2addr v0, v3

    .line 356
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOW_A11Y_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v1

    .line 357
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getImportantStreamList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getUnImportantStreamList()Ljava/util/List;

    move-result-object p1

    invoke-static {v2, v3, p1, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyImportance(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    .line 358
    invoke-static {p1, p2, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->updateRowVisibility(Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)Ljava/util/List;

    move-result-object p1

    .line 359
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p2, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v3

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_MULTI_SOUND_BT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 360
    invoke-virtual {p2, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v4

    .line 359
    invoke-static {p1, v3, v0, v4}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->updateRowPriority(Ljava/util/List;IZZ)Ljava/util/List;

    move-result-object p1

    if-eqz v0, :cond_1b

    if-eqz v1, :cond_1b

    .line 361
    invoke-virtual {p2, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v1

    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ACCESSIBILITY:I

    if-eq v1, v2, :cond_1b

    .line 362
    invoke-static {p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->updateAccessibilityRowPriority(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 365
    :cond_1b
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v1

    .line 366
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p2, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v2

    .line 367
    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v3, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_EXPAND_STATE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 368
    invoke-virtual {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v3

    .line 369
    invoke-virtual {v3, p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 370
    invoke-static {p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyRowOrder(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 371
    invoke-static {p2, v1, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->calcTimeOut(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 372
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 324
    :pswitch_2a
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ANIMATING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 325
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->PENDING_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 326
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 327
    invoke-virtual {v0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p2

    .line 328
    invoke-virtual {p2, p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p1

    .line 329
    invoke-virtual {p1, p0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->CONFIGURATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 330
    invoke-virtual {p0, p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->OPEN_THEME_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 331
    invoke-virtual {p0, p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 332
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 334
    :cond_1c
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 335
    invoke-virtual {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p1

    .line 336
    invoke-virtual {p1, p0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->CONFIGURATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 337
    invoke-virtual {p0, p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->OPEN_THEME_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 338
    invoke-virtual {p0, p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 339
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 342
    :cond_1d
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 343
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 344
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 277
    :pswitch_2b
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p0

    .line 278
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NONE:I

    if-ne p0, v0, :cond_1e

    .line 279
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    .line 281
    :cond_1e
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result v0

    .line 282
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOW_A11Y_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v1

    .line 283
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_ZEN_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v2

    .line 284
    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p1, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v4

    .line 285
    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->SYSTEM_TIME_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    invoke-virtual {p1, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;)J

    move-result-wide v5

    .line 287
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v7

    if-eqz v4, :cond_1f

    .line 288
    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    sget-object v9, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda33;->INSTANCE:Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda33;

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 289
    invoke-static {v3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->prepareVolumePanelRow(Z)Ljava/util/List;

    move-result-object v7

    .line 291
    :cond_1f
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getStreamStates()Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->mergeRemoteStream(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 292
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getImportantStreamList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getUnImportantStreamList()Ljava/util/List;

    move-result-object v9

    invoke-static {v7, v8, v9, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyImportance(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 293
    invoke-static {v1, p1, p2, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->updateVolumeStates(Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Ljava/util/List;

    move-result-object v1

    .line 295
    new-instance v7, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v7, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v8, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 296
    invoke-virtual {v7, v8, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 297
    invoke-static {v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyRowOrder(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 298
    invoke-virtual {p0, v1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ZEN_MODE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 299
    invoke-virtual {p0, v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 300
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;->SYSTEM_TIME_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;

    .line 301
    invoke-virtual {p0, v0, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;J)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 302
    invoke-virtual {p0, v0, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 304
    sget-boolean v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->VOLUME_DUAL_AUDIO:Z

    if-eqz v0, :cond_20

    .line 305
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result v0

    .line 306
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_MULTI_SOUND_BT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p1

    .line 307
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_MULTI_SOUND_BT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 308
    invoke-virtual {v0, v1, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 311
    :cond_20
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ANIMATING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 312
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 313
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->PENDING_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 314
    invoke-virtual {p0, p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 315
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 317
    :cond_21
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 318
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 319
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 272
    :pswitch_2c
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 273
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 274
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 259
    :pswitch_2d
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    if-nez p0, :cond_23

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_22

    goto :goto_2

    .line 265
    :cond_22
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 266
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 267
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 260
    :cond_23
    :goto_2
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 261
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->WITH_ANIMATION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 262
    invoke-virtual {p0, p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 263
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 251
    :pswitch_2e
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 252
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->WITH_ANIMATION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 253
    invoke-virtual {p0, p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 254
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 235
    :pswitch_2f
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    if-nez p0, :cond_25

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    if-nez p0, :cond_25

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 236
    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    if-nez p0, :cond_25

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_CSD_100_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 237
    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_24

    goto :goto_3

    .line 243
    :cond_24
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 244
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 245
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 238
    :cond_25
    :goto_3
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 239
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->WITH_ANIMATION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 240
    invoke-virtual {p0, p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 241
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 221
    :pswitch_30
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    if-nez p0, :cond_27

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_SUB_DISPLAY_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 222
    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_26

    goto :goto_4

    .line 228
    :cond_26
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 229
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 230
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 223
    :cond_27
    :goto_4
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 224
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->WITH_ANIMATION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 225
    invoke-virtual {p0, p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 226
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 214
    :pswitch_31
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 215
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ANIMATING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 216
    invoke-virtual {p0, p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 217
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 161
    :pswitch_32
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ANIMATING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    if-nez p0, :cond_2c

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->CONFIGURATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 162
    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_28

    goto/16 :goto_7

    .line 166
    :cond_28
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_SUB_DISPLAY_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 167
    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v1

    if-eqz v1, :cond_29

    goto/16 :goto_6

    .line 175
    :cond_29
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->TIME_OUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v1

    .line 176
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->TIME_OUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v2

    .line 178
    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOW_A11Y_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v4

    .line 179
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v5

    .line 180
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getImportantStreamList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getUnImportantStreamList()Ljava/util/List;

    move-result-object v7

    .line 179
    invoke-static {v5, v6, v7, v4}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyImportance(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v4

    .line 182
    invoke-static {v4, p1, p2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyRemoteLabel(Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/List;

    move-result-object v4

    .line 184
    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SAFE_MEDIA_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p1, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v5

    .line 185
    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SAFE_MEDIA_PIN_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p1, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v6

    .line 186
    invoke-static {v4, v5, v6, p2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyEarProtectLevel(Ljava/util/List;ZZLcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/List;

    move-result-object v4

    .line 188
    sget-object v7, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p2, v7}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v7

    .line 189
    invoke-static {v4, v7}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyActiveState(Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    .line 191
    sget-object v7, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->FOLDER_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, v7}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v7

    .line 192
    new-instance v8, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v8, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    if-eqz v7, :cond_2a

    .line 193
    sget-object v9, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SHOW_SUB_DISPLAY_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    goto :goto_5

    :cond_2a
    sget-object v9, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SHOW:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    :goto_5
    invoke-virtual {v8, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v8

    .line 194
    invoke-virtual {v8, p0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v3

    sget-object v8, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 195
    invoke-virtual {v3, v8, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v3

    sget-object v8, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 196
    invoke-virtual {v3, v8, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v3

    sget-object v8, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 197
    invoke-static {p2, v1, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->calcTimeOut(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)I

    move-result p2

    invoke-virtual {v3, v8, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->MEDIA_DEFAULT_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->MEDIA_DEFAULT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 198
    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v2

    invoke-virtual {p2, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_LOCKSCREEN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_LOCKSCREEN:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 199
    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v2

    invoke-virtual {p2, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->CUTOUT_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->CUTOUT_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 200
    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p2

    .line 201
    invoke-virtual {p2, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->PIN_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PIN_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 202
    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SAFE_MEDIA_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 203
    invoke-virtual {p2, v1, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SAFE_MEDIA_PIN_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 204
    invoke-virtual {p2, v1, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_BT_SCO_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_BT_SCO_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 205
    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p1

    invoke-virtual {p2, v1, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p1

    xor-int/lit8 p2, v7, 0x1

    .line 206
    invoke-virtual {p1, p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 207
    invoke-virtual {p0, v0, v7}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 209
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 168
    :cond_2b
    :goto_6
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->TIME_OUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p0

    .line 169
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->TIME_OUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p1

    .line 170
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_RESCHEDULE_TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 171
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 172
    invoke-static {p2, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->calcTimeOut(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 173
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 163
    :cond_2c
    :goto_7
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 164
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 165
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 155
    :pswitch_33
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 156
    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    goto/16 :goto_8

    .line 136
    :pswitch_34
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOLUME_SMART_VIEW_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    sput-boolean p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->VOLUME_SMART_VIEW_STREAM:Z

    .line 137
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOLUME_WARNING_POPUP_WALLET_MINI:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    sput-boolean p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->VOLUME_WARNING_POPUP_WALLET_MINI:Z

    .line 138
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOLUME_WARNING_POPUP_SIDE_VIEW:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    sput-boolean p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->VOLUME_WARNING_POPUP_SIDE_VIEW:Z

    .line 139
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOLUME_BUDS_TOGETHER:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    sput-boolean p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->VOLUME_BUDS_TOGETHER:Z

    .line 140
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOLUME_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    sput-boolean p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->VOLUME_DUAL_AUDIO:Z

    .line 142
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    .line 143
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 144
    invoke-static {p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->prepareVolumePanelRow(Z)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p2

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 145
    invoke-virtual {p2, v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 146
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 147
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 148
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SETUP_WIZARD_COMPLETE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SETUP_WIZARD_COMPLETE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 149
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->VOLUME_BUDS_TOGETHER:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    sget-boolean p2, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->VOLUME_BUDS_TOGETHER:Z

    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 151
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    :goto_8
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2e
        :pswitch_2d
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

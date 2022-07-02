.class abstract Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;
.super Ljava/lang/Object;
.source "GlobalActionsDialogLite.java"

# interfaces
.implements Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialogLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ToggleAction"
.end annotation


# instance fields
.field protected mDisabledIconResid:I

.field protected mDisabledStatusMessageResId:I

.field protected mEnabledIconResId:I

.field protected mEnabledStatusMessageResId:I

.field protected mMessageResId:I

.field protected mState:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;IIIII)V
    .locals 0

    .line 1734
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1714
    sget-object p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    .line 1735
    iput p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mEnabledIconResId:I

    .line 1736
    iput p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mDisabledIconResid:I

    .line 1737
    iput p4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mMessageResId:I

    .line 1738
    iput p5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mEnabledStatusMessageResId:I

    .line 1739
    iput p6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mDisabledStatusMessageResId:I

    return-void
.end method


# virtual methods
.method public updateState(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;)V
    .locals 0

    .line 1835
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    return-void
.end method

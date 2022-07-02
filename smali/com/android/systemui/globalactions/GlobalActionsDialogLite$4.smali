.class Lcom/android/systemui/globalactions/GlobalActionsDialogLite$4;
.super Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;
.source "GlobalActionsDialogLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->addUserActions(Ljava/util/List;Landroid/content/pm/UserInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

.field final synthetic val$user:Landroid/content/pm/UserInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V
    .locals 0

    .line 1203
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$4;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iput-object p5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$4;->val$user:Landroid/content/pm/UserInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public showBeforeProvisioning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showDuringKeyguard()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.class Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout$1;
.super Lcom/samsung/android/multiwindow/INaturalSwitchingCallback$Stub;
.source "NaturalSwitchingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;


# direct methods
.method public static synthetic $r8$lambda$inkfOL6P_Vz7AhBPYdLDkC3K_OM()V
    .locals 0

    invoke-static {}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout$1;->lambda$onReadyToDropAnimation$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout$1;->this$0:Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/INaturalSwitchingCallback$Stub;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onReadyToDropAnimation$0()V
    .locals 0

    return-void
.end method


# virtual methods
.method public onReadyToDropAnimation()V
    .locals 1

    .line 117
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout$1;->this$0:Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 119
    sget-object v0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout$1$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout$1$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

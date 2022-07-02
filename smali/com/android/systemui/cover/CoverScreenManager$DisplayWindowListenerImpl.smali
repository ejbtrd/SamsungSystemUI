.class Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;
.super Landroid/view/IDisplayWindowListener$Stub;
.source "CoverScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/cover/CoverScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayWindowListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cover/CoverScreenManager;


# direct methods
.method public static synthetic $r8$lambda$TFHvJ-tni8SixK1_VhVDsASYdWo(Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;->lambda$onDisplayAdded$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zQWeV2JHqZAiaKoATFyBRVvg8ik(Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;->lambda$onDisplayRemoved$1(I)V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/cover/CoverScreenManager;)V
    .locals 0

    .line 1025
    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-direct {p0}, Landroid/view/IDisplayWindowListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/cover/CoverScreenManager;Lcom/android/systemui/cover/CoverScreenManager$1;)V
    .locals 0

    .line 1025
    invoke-direct {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;-><init>(Lcom/android/systemui/cover/CoverScreenManager;)V

    return-void
.end method

.method private synthetic lambda$onDisplayAdded$0(I)V
    .locals 0

    .line 1030
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-static {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->access$1400(Lcom/android/systemui/cover/CoverScreenManager;I)V

    return-void
.end method

.method private synthetic lambda$onDisplayRemoved$1(I)V
    .locals 0

    .line 1039
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-static {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->access$1300(Lcom/android/systemui/cover/CoverScreenManager;I)V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-static {v0}, Lcom/android/systemui/cover/CoverScreenManager;->access$900(Lcom/android/systemui/cover/CoverScreenManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-static {v0}, Lcom/android/systemui/cover/CoverScreenManager;->access$900(Lcom/android/systemui/cover/CoverScreenManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onFixedRotationFinished(I)V
    .locals 0

    return-void
.end method

.method public onFixedRotationStarted(II)V
    .locals 0

    return-void
.end method

.method public onStartRemoteConfigurationChanged(I)V
    .locals 0

    return-void
.end method

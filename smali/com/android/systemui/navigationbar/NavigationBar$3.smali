.class Lcom/android/systemui/navigationbar/NavigationBar$3;
.super Ljava/lang/Object;
.source "NavigationBar.java"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationBarTransitions$DarkIntensityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/NavigationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigationbar/NavigationBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar$3;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDarkIntensity(F)V
    .locals 1

    .line 448
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_AOSP_BUG_FIX:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar$3;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$1600(Lcom/android/systemui/navigationbar/NavigationBar;)Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$3;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$1600(Lcom/android/systemui/navigationbar/NavigationBar;)Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->setDarkIntensity(F)V

    :cond_0
    return-void
.end method

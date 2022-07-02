.class Lcom/android/systemui/statusbar/phone/StatusBarWindowController$1;
.super Ljava/lang/Object;
.source "StatusBarWindowController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/PrivacyInsetsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->attach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowController;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowInsetsChanged(Landroid/view/WindowInsets;Lcom/android/systemui/statusbar/events/PrivacyDotViewController$PrivacyInsetsCallback;)V
    .locals 0
    .param p1    # Landroid/view/WindowInsets;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 167
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Landroid/view/WindowInsets;Lcom/android/systemui/statusbar/events/PrivacyDotViewController$PrivacyInsetsCallback;)V

    return-void
.end method

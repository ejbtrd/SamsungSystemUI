.class public final synthetic Lcom/android/systemui/statusbar/PanelStateNotifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/PanelStateNotifier$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/systemui/statusbar/PanelStateNotifier$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/PanelStateNotifier$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/statusbar/PanelStateNotifier$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->$r8$lambda$uX9Pmvjc9TJTUOs84c_L7Ny1KjY(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

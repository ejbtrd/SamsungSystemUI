.class public final synthetic Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/ShortcutManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/ShortcutManager;ILandroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda9;->f$0:Lcom/android/systemui/statusbar/ShortcutManager;

    iput p2, p0, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda9;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda9;->f$2:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda9;->f$0:Lcom/android/systemui/statusbar/ShortcutManager;

    iget v1, p0, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda9;->f$1:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda9;->f$2:Landroid/content/ComponentName;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/ShortcutManager;->$r8$lambda$1ZIev91tmaN26ZNvfnSJwbqmhGM(Lcom/android/systemui/statusbar/ShortcutManager;ILandroid/content/ComponentName;)V

    return-void
.end method

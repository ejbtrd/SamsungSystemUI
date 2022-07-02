.class public final synthetic Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/ShortcutManager$ShortcutCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/ShortcutManager$ShortcutCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda13;->f$0:Lcom/android/systemui/statusbar/ShortcutManager$ShortcutCallback;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda13;->f$0:Lcom/android/systemui/statusbar/ShortcutManager$ShortcutCallback;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->$r8$lambda$UwsAC5TFw_BCvvVqwZ_oseOx128(Lcom/android/systemui/statusbar/ShortcutManager$ShortcutCallback;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

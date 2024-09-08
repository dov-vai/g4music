namespace G4 {

    [GtkTemplate (ui = "/com/github/neithern/g4music/gtk/add-playlist.ui")]
    public class PlaylistAddWindow : Adw.Window {
        [GtkChild]
        unowned Adw.HeaderBar header;

        [GtkChild]
        unowned Gtk.Entry playlist_name_entry;

        [GtkChild]
        unowned Gtk.Button add_playlist_button;

        [GtkChild]
        unowned Gtk.ListBox playlist_list;


        public PlaylistAddWindow(Application app){
            add_playlist_button.clicked.connect (this.on_add_clicked);
            populate_playlists();
        }


        private void on_add_clicked () {
            string playlist_name = playlist_name_entry.get_text ();

            if (playlist_name.strip ().length > 0) {
                add_playlist_to_list (playlist_name);
                playlist_name_entry.set_text ("");
            }
        }


        private void populate_playlists(){
            string[] playlists = { "EDM", "Pop", "Jazz" };

            foreach (var playlist in playlists) {
                add_playlist_to_list (playlist);
            }
        }

        private void add_playlist_to_list (string playlist_name) {
            var row = new Gtk.ListBoxRow ();
            var label = new Gtk.Label (playlist_name);
            row.set_child (label);
            playlist_list.append (row);
        }
    }

}
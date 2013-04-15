
begin
    PUAVO_CONFIG = YAML.load_file("#{Rails.root}/config/puavo.yml")
rescue Errno::ENOENT
    PUAVO_CONFIG = YAML.load_file("/etc/puavo-ca-rails/puavo.yml")
    STDERR.puts "Using puavo config from /etc/puavo-ca-rails/puavo.yml"
end